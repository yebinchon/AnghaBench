
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int esd_usb2_set_mode(struct net_device *netdev, enum can_mode mode)
{
 switch (mode) {
 case 128:
  netif_wake_queue(netdev);
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
