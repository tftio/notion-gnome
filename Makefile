#
# Global Settings
#

INSTALL = install
DESTDIR ?= /home/jfb/.local
PREFIX  ?= $(DESTDIR)

PATH_NOTION_GNOME = $(PREFIX)/bin/notion-gnome
PATH_NOTION_GNOME_DESKTOP = $(PREFIX)/share/applications/notion-gnome.desktop
PATH_NOTION_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/notion-gnome.session
PATH_NOTION_GNOME_XSESSION = $(PREFIX)/share/xsessions/notion-gnome.desktop
PATH_GNOME_SESSION_NOTION = $(PREFIX)/bin/gnome-session-notion

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/notion-gnome-xsession.desktop $(PATH_NOTION_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/notion-gnome.desktop $(PATH_NOTION_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/notion-gnome.session $(PATH_NOTION_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/notion-gnome $(PATH_NOTION_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-notion $(PATH_GNOME_SESSION_NOTION)



uninstall:
	rm -f $(PATH_NOTION_GNOME)
	rm -f $(PATH_NOTION_GNOME_DESKTOP)
	rm -f $(PATH_NOTION_GNOME_SESSION)
	rm -f $(PATH_NOTION_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_NOTION)



.PHONY: all install uninstall
