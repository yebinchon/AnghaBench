
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int netif_wake_queue (struct net_device*) ;
 int ti_hecc_start (struct net_device*) ;

__attribute__((used)) static int ti_hecc_do_set_mode(struct net_device *ndev, enum can_mode mode)
{
 int ret = 0;

 switch (mode) {
 case 128:
  ti_hecc_start(ndev);
  netif_wake_queue(ndev);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
