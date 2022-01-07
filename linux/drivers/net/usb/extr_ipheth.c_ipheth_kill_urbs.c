
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipheth_device {int rx_urb; int tx_urb; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void ipheth_kill_urbs(struct ipheth_device *dev)
{
 usb_kill_urb(dev->tx_urb);
 usb_kill_urb(dev->rx_urb);
}
