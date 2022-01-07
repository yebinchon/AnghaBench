
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct ican3_dev {TYPE_1__ can; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;


 int CAN_MODE_START ;
 int CAN_STATE_ERROR_ACTIVE ;
 int ENOTSUPP ;
 int ican3_set_bus_state (struct ican3_dev*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct ican3_dev* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int ican3_set_mode(struct net_device *ndev, enum can_mode mode)
{
 struct ican3_dev *mod = netdev_priv(ndev);
 int ret;

 if (mode != CAN_MODE_START)
  return -ENOTSUPP;


 ret = ican3_set_bus_state(mod, 1);
 if (ret) {
  netdev_err(ndev, "unable to set bus-on\n");
  return ret;
 }


 mod->can.state = CAN_STATE_ERROR_ACTIVE;

 if (netif_queue_stopped(ndev))
  netif_wake_queue(ndev);

 return 0;
}
