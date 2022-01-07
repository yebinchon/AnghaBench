
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_usb_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*,int) ;
 struct peak_usb_device* netdev_priv (struct net_device*) ;
 int peak_usb_restart (struct peak_usb_device*) ;

__attribute__((used)) static int peak_usb_set_mode(struct net_device *netdev, enum can_mode mode)
{
 struct peak_usb_device *dev = netdev_priv(netdev);
 int err = 0;

 switch (mode) {
 case 128:
  err = peak_usb_restart(dev);
  if (err)
   netdev_err(netdev, "couldn't start device (err %d)\n",
       err);
  break;

 default:
  return -EOPNOTSUPP;
 }

 return err;
}
