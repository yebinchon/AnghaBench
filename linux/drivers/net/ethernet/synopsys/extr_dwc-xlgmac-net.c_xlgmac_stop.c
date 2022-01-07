
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_hw_ops {int (* exit ) (struct xlgmac_pdata*) ;int (* disable_rx ) (struct xlgmac_pdata*) ;int (* disable_tx ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {unsigned int channel_count; struct xlgmac_channel* channel_head; struct net_device* netdev; struct xlgmac_hw_ops hw_ops; } ;
struct xlgmac_channel {int queue_index; int tx_ring; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;
 int stub2 (struct xlgmac_pdata*) ;
 int stub3 (struct xlgmac_pdata*) ;
 int xlgmac_free_irqs (struct xlgmac_pdata*) ;
 int xlgmac_napi_disable (struct xlgmac_pdata*,int) ;
 int xlgmac_stop_timers (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_stop(struct xlgmac_pdata *pdata)
{
 struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
 struct net_device *netdev = pdata->netdev;
 struct xlgmac_channel *channel;
 struct netdev_queue *txq;
 unsigned int i;

 netif_tx_stop_all_queues(netdev);
 xlgmac_stop_timers(pdata);
 hw_ops->disable_tx(pdata);
 hw_ops->disable_rx(pdata);
 xlgmac_free_irqs(pdata);
 xlgmac_napi_disable(pdata, 1);
 hw_ops->exit(pdata);

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   continue;

  txq = netdev_get_tx_queue(netdev, channel->queue_index);
  netdev_tx_reset_queue(txq);
 }
}
