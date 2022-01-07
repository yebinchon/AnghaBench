
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct ican3_dev {TYPE_1__ can; int ndev; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int close_candev (struct net_device*) ;
 int ican3_set_bus_state (struct ican3_dev*,int) ;
 int netdev_err (int ,char*) ;
 struct ican3_dev* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;

__attribute__((used)) static int ican3_open(struct net_device *ndev)
{
 struct ican3_dev *mod = netdev_priv(ndev);
 int ret;


 ret = open_candev(ndev);
 if (ret) {
  netdev_err(mod->ndev, "unable to start CAN layer\n");
  return ret;
 }


 ret = ican3_set_bus_state(mod, 1);
 if (ret) {
  netdev_err(mod->ndev, "unable to set bus-on\n");
  close_candev(ndev);
  return ret;
 }


 mod->can.state = CAN_STATE_ERROR_ACTIVE;
 netif_start_queue(ndev);

 return 0;
}
