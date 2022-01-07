
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ems_usb {int dummy; } ;


 int SJA1000_MOD_RM ;
 int close_candev (struct net_device*) ;
 scalar_t__ ems_usb_write_mode (struct ems_usb*,int ) ;
 struct ems_usb* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int unlink_all_urbs (struct ems_usb*) ;

__attribute__((used)) static int ems_usb_close(struct net_device *netdev)
{
 struct ems_usb *dev = netdev_priv(netdev);


 unlink_all_urbs(dev);

 netif_stop_queue(netdev);


 if (ems_usb_write_mode(dev, SJA1000_MOD_RM))
  netdev_warn(netdev, "couldn't stop device");

 close_candev(netdev);

 return 0;
}
