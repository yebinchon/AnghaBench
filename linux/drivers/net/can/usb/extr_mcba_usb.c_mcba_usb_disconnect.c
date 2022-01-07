
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mcba_priv {int netdev; } ;


 int free_candev (int ) ;
 int mcba_urb_unlink (struct mcba_priv*) ;
 int netdev_info (int ,char*) ;
 int unregister_candev (int ) ;
 struct mcba_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mcba_usb_disconnect(struct usb_interface *intf)
{
 struct mcba_priv *priv = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 netdev_info(priv->netdev, "device disconnected\n");

 unregister_candev(priv->netdev);
 mcba_urb_unlink(priv);
 free_candev(priv->netdev);
}
