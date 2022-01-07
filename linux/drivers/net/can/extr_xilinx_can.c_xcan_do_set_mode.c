
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int xcan_chip_start (struct net_device*) ;

__attribute__((used)) static int xcan_do_set_mode(struct net_device *ndev, enum can_mode mode)
{
 int ret;

 switch (mode) {
 case 128:
  ret = xcan_chip_start(ndev);
  if (ret < 0) {
   netdev_err(ndev, "xcan_chip_start failed!\n");
   return ret;
  }
  netif_wake_queue(ndev);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
