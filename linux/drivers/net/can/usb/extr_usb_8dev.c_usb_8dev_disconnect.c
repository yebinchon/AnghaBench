
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_8dev_priv {int netdev; } ;


 int free_candev (int ) ;
 int netdev_info (int ,char*) ;
 int unlink_all_urbs (struct usb_8dev_priv*) ;
 int unregister_netdev (int ) ;
 struct usb_8dev_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_8dev_disconnect(struct usb_interface *intf)
{
 struct usb_8dev_priv *priv = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 if (priv) {
  netdev_info(priv->netdev, "device disconnected\n");

  unregister_netdev(priv->netdev);
  unlink_all_urbs(priv);
  free_candev(priv->netdev);
 }

}
