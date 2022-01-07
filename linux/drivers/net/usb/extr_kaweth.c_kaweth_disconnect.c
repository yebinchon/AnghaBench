
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct net_device {int dummy; } ;
struct kaweth_device {int intbufferhandle; scalar_t__ intbuffer; int dev; int rxbufferhandle; scalar_t__ rx_buf; int irq_urb; int tx_urb; int rx_urb; struct net_device* net; } ;


 int INTBUFFERSIZE ;
 int KAWETH_BUF_SIZE ;
 int dev_warn (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int netdev_dbg (struct net_device*,char*) ;
 int unregister_netdev (struct net_device*) ;
 int usb_free_coherent (int ,int ,void*,int ) ;
 int usb_free_urb (int ) ;
 struct kaweth_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void kaweth_disconnect(struct usb_interface *intf)
{
 struct kaweth_device *kaweth = usb_get_intfdata(intf);
 struct net_device *netdev;

 usb_set_intfdata(intf, ((void*)0));
 if (!kaweth) {
  dev_warn(&intf->dev, "unregistering non-existent device\n");
  return;
 }
 netdev = kaweth->net;

 netdev_dbg(kaweth->net, "Unregistering net device\n");
 unregister_netdev(netdev);

 usb_free_urb(kaweth->rx_urb);
 usb_free_urb(kaweth->tx_urb);
 usb_free_urb(kaweth->irq_urb);

 usb_free_coherent(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
 usb_free_coherent(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);

 free_netdev(netdev);
}
