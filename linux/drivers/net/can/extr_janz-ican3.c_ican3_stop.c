
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct ican3_dev {int echoq; int ndev; TYPE_1__ can; } ;


 int CAN_STATE_STOPPED ;
 int close_candev (struct net_device*) ;
 int ican3_set_bus_state (struct ican3_dev*,int) ;
 int netdev_err (int ,char*) ;
 struct ican3_dev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ican3_stop(struct net_device *ndev)
{
 struct ican3_dev *mod = netdev_priv(ndev);
 int ret;


 netif_stop_queue(ndev);
 mod->can.state = CAN_STATE_STOPPED;


 ret = ican3_set_bus_state(mod, 0);
 if (ret) {
  netdev_err(mod->ndev, "unable to set bus-off\n");
  return ret;
 }


 skb_queue_purge(&mod->echoq);


 close_candev(ndev);
 return 0;
}
