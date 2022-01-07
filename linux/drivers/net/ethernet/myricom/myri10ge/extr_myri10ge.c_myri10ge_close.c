
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct myri10ge_priv {scalar_t__ running; int num_slices; scalar_t__ rebooted; int down_cnt; TYPE_2__* ss; int down_wq; int watchdog_timer; } ;
struct myri10ge_cmd {int dummy; } ;
struct TYPE_3__ {int * req_bytes; } ;
struct TYPE_4__ {int napi; TYPE_1__ tx; } ;


 int HZ ;
 int MXGEFW_CMD_ETHERNET_DOWN ;
 scalar_t__ MYRI10GE_ETH_RUNNING ;
 scalar_t__ MYRI10GE_ETH_STOPPED ;
 scalar_t__ MYRI10GE_ETH_STOPPING ;
 int del_timer_sync (int *) ;
 int mb () ;
 int myri10ge_free_irq (struct myri10ge_priv*) ;
 int myri10ge_free_rings (TYPE_2__*) ;
 int myri10ge_send_cmd (struct myri10ge_priv*,int ,struct myri10ge_cmd*,int ) ;
 int napi_disable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int myri10ge_close(struct net_device *dev)
{
 struct myri10ge_priv *mgp = netdev_priv(dev);
 struct myri10ge_cmd cmd;
 int status, old_down_cnt;
 int i;

 if (mgp->running != MYRI10GE_ETH_RUNNING)
  return 0;

 if (mgp->ss[0].tx.req_bytes == ((void*)0))
  return 0;

 del_timer_sync(&mgp->watchdog_timer);
 mgp->running = MYRI10GE_ETH_STOPPING;
 for (i = 0; i < mgp->num_slices; i++)
  napi_disable(&mgp->ss[i].napi);

 netif_carrier_off(dev);

 netif_tx_stop_all_queues(dev);
 if (mgp->rebooted == 0) {
  old_down_cnt = mgp->down_cnt;
  mb();
  status =
      myri10ge_send_cmd(mgp, MXGEFW_CMD_ETHERNET_DOWN, &cmd, 0);
  if (status)
   netdev_err(dev, "Couldn't bring down link\n");

  wait_event_timeout(mgp->down_wq, old_down_cnt != mgp->down_cnt,
       HZ);
  if (old_down_cnt == mgp->down_cnt)
   netdev_err(dev, "never got down irq\n");
 }
 netif_tx_disable(dev);
 myri10ge_free_irq(mgp);
 for (i = 0; i < mgp->num_slices; i++)
  myri10ge_free_rings(&mgp->ss[i]);

 mgp->running = MYRI10GE_ETH_STOPPED;
 return 0;
}
