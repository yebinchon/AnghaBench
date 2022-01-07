
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_usb_device {int dummy; } ;
struct net_device {int dummy; } ;


 int close_candev (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct peak_usb_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int peak_usb_start (struct peak_usb_device*) ;

__attribute__((used)) static int peak_usb_ndo_open(struct net_device *netdev)
{
 struct peak_usb_device *dev = netdev_priv(netdev);
 int err;


 err = open_candev(netdev);
 if (err)
  return err;


 err = peak_usb_start(dev);
 if (err) {
  netdev_err(netdev, "couldn't start device: %d\n", err);
  close_candev(netdev);
  return err;
 }

 netif_start_queue(netdev);

 return 0;
}
