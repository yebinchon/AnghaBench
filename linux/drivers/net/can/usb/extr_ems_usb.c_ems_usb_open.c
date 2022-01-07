
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ems_usb {int netdev; } ;


 int ENODEV ;
 int SJA1000_MOD_RM ;
 int close_candev (struct net_device*) ;
 int ems_usb_start (struct ems_usb*) ;
 int ems_usb_write_mode (struct ems_usb*,int ) ;
 struct ems_usb* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_device_detach (int ) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;

__attribute__((used)) static int ems_usb_open(struct net_device *netdev)
{
 struct ems_usb *dev = netdev_priv(netdev);
 int err;

 err = ems_usb_write_mode(dev, SJA1000_MOD_RM);
 if (err)
  return err;


 err = open_candev(netdev);
 if (err)
  return err;


 err = ems_usb_start(dev);
 if (err) {
  if (err == -ENODEV)
   netif_device_detach(dev->netdev);

  netdev_warn(netdev, "couldn't start device: %d\n", err);

  close_candev(netdev);

  return err;
 }


 netif_start_queue(netdev);

 return 0;
}
