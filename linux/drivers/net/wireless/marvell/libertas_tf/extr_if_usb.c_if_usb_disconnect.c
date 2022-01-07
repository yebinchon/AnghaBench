
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct lbtf_private {int dummy; } ;
struct if_usb_card {struct lbtf_private* priv; } ;


 int LBTF_DEB_MAIN ;
 int if_usb_free (struct if_usb_card*) ;
 int if_usb_reset_device (struct lbtf_private*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_remove_card (struct lbtf_private*) ;
 struct if_usb_card* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void if_usb_disconnect(struct usb_interface *intf)
{
 struct if_usb_card *cardp = usb_get_intfdata(intf);
 struct lbtf_private *priv = cardp->priv;

 lbtf_deb_enter(LBTF_DEB_MAIN);

 if_usb_reset_device(priv);

 if (priv)
  lbtf_remove_card(priv);


 if_usb_free(cardp);

 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(intf));

 lbtf_deb_leave(LBTF_DEB_MAIN);
}
