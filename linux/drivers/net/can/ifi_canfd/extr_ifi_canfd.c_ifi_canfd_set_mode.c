
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int ifi_canfd_start (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int ifi_canfd_set_mode(struct net_device *ndev, enum can_mode mode)
{
 switch (mode) {
 case 128:
  ifi_canfd_start(ndev);
  netif_wake_queue(ndev);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
