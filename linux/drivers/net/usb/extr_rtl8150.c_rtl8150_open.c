
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device {int dev; int dev_addr; } ;
struct TYPE_9__ {int rx_urb; int netdev; int intr_urb; int intr_interval; int intr_buff; int udev; TYPE_5__* rx_skb; } ;
typedef TYPE_1__ rtl8150_t ;
struct TYPE_10__ {int data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDR ;
 int INTBUFSIZE ;
 int RTL8150_MTU ;
 int dev_warn (int *,char*,int) ;
 int enable_net_traffic (TYPE_1__*) ;
 int intr_callback ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_device_detach (int ) ;
 int netif_start_queue (struct net_device*) ;
 TYPE_5__* pull_skb (TYPE_1__*) ;
 int read_bulk_callback ;
 int set_carrier (struct net_device*) ;
 int set_registers (TYPE_1__*,int ,int,int ) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int usb_fill_int_urb (int ,int ,int ,int ,int ,int ,TYPE_1__*,int ) ;
 int usb_kill_urb (int ) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl8150_open(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 int res;

 if (dev->rx_skb == ((void*)0))
  dev->rx_skb = pull_skb(dev);
 if (!dev->rx_skb)
  return -ENOMEM;

 set_registers(dev, IDR, 6, netdev->dev_addr);

 usb_fill_bulk_urb(dev->rx_urb, dev->udev, usb_rcvbulkpipe(dev->udev, 1),
        dev->rx_skb->data, RTL8150_MTU, read_bulk_callback, dev);
 if ((res = usb_submit_urb(dev->rx_urb, GFP_KERNEL))) {
  if (res == -ENODEV)
   netif_device_detach(dev->netdev);
  dev_warn(&netdev->dev, "rx_urb submit failed: %d\n", res);
  return res;
 }
 usb_fill_int_urb(dev->intr_urb, dev->udev, usb_rcvintpipe(dev->udev, 3),
       dev->intr_buff, INTBUFSIZE, intr_callback,
       dev, dev->intr_interval);
 if ((res = usb_submit_urb(dev->intr_urb, GFP_KERNEL))) {
  if (res == -ENODEV)
   netif_device_detach(dev->netdev);
  dev_warn(&netdev->dev, "intr_urb submit failed: %d\n", res);
  usb_kill_urb(dev->rx_urb);
  return res;
 }
 enable_net_traffic(dev);
 set_carrier(netdev);
 netif_start_queue(netdev);

 return res;
}
