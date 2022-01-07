
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ucan_priv {int netdev; } ;


 int free_candev (int ) ;
 int unregister_netdev (int ) ;
 struct ucan_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ucan_disconnect(struct usb_interface *intf)
{
 struct ucan_priv *up = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 if (up) {
  unregister_netdev(up->netdev);
  free_candev(up->netdev);
 }
}
