
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_card_rec {int adapter; } ;
struct device {int dummy; } ;


 int MWIFIEX_BSS_ROLE_ANY ;
 int mwifiex_fw_dump_event (int ) ;
 int mwifiex_get_priv (int ,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_card_rec* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void mwifiex_usb_coredump(struct device *dev)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_card_rec *card = usb_get_intfdata(intf);

 mwifiex_fw_dump_event(mwifiex_get_priv(card->adapter,
            MWIFIEX_BSS_ROLE_ANY));
}
