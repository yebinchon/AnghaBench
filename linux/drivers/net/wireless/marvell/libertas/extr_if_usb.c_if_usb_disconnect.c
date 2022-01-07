
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {int surprise_removed; struct lbs_private* priv; } ;


 int if_usb_free (struct if_usb_card*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int lbs_remove_card (struct lbs_private*) ;
 int lbs_stop_card (struct lbs_private*) ;
 struct if_usb_card* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void if_usb_disconnect(struct usb_interface *intf)
{
 struct if_usb_card *cardp = usb_get_intfdata(intf);
 struct lbs_private *priv = cardp->priv;

 cardp->surprise_removed = 1;

 if (priv) {
  lbs_stop_card(priv);
  lbs_remove_card(priv);
 }


 if_usb_free(cardp);

 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(intf));
}
