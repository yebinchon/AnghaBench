
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ipheth_device {int carrier_work; struct usb_device* udev; } ;


 int GFP_KERNEL ;
 int IPHETH_ALT_INTFNUM ;
 int IPHETH_CARRIER_CHECK_TIMEOUT ;
 int IPHETH_INTFNUM ;
 int ipheth_carrier_set (struct ipheth_device*) ;
 int ipheth_rx_submit (struct ipheth_device*,int ) ;
 struct ipheth_device* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;

__attribute__((used)) static int ipheth_open(struct net_device *net)
{
 struct ipheth_device *dev = netdev_priv(net);
 struct usb_device *udev = dev->udev;
 int retval = 0;

 usb_set_interface(udev, IPHETH_INTFNUM, IPHETH_ALT_INTFNUM);

 retval = ipheth_carrier_set(dev);
 if (retval)
  return retval;

 retval = ipheth_rx_submit(dev, GFP_KERNEL);
 if (retval)
  return retval;

 schedule_delayed_work(&dev->carrier_work, IPHETH_CARRIER_CHECK_TIMEOUT);
 return retval;
}
