
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_if {int (* phy_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int (* exit ) (struct xgbe_prv_data*) ;int (* disable_rx ) (struct xgbe_prv_data*) ;int (* disable_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; int dev_state; struct xgbe_channel** channel; int dev_workqueue; struct net_device* netdev; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int queue_index; int tx_ring; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int DBGPR (char*) ;
 int XGBE_STOPPED ;
 int flush_workqueue (int ) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int stub3 (struct xgbe_prv_data*) ;
 int stub4 (struct xgbe_prv_data*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xgbe_free_irqs (struct xgbe_prv_data*) ;
 int xgbe_napi_disable (struct xgbe_prv_data*,int) ;
 int xgbe_reset_vxlan_accel (struct xgbe_prv_data*) ;
 int xgbe_stop_timers (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_stop(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_phy_if *phy_if = &pdata->phy_if;
 struct xgbe_channel *channel;
 struct net_device *netdev = pdata->netdev;
 struct netdev_queue *txq;
 unsigned int i;

 DBGPR("-->xgbe_stop\n");

 if (test_bit(XGBE_STOPPED, &pdata->dev_state))
  return;

 netif_tx_stop_all_queues(netdev);

 xgbe_stop_timers(pdata);
 flush_workqueue(pdata->dev_workqueue);

 xgbe_reset_vxlan_accel(pdata);

 hw_if->disable_tx(pdata);
 hw_if->disable_rx(pdata);

 phy_if->phy_stop(pdata);

 xgbe_free_irqs(pdata);

 xgbe_napi_disable(pdata, 1);

 hw_if->exit(pdata);

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];
  if (!channel->tx_ring)
   continue;

  txq = netdev_get_tx_queue(netdev, channel->queue_index);
  netdev_tx_reset_queue(txq);
 }

 set_bit(XGBE_STOPPED, &pdata->dev_state);

 DBGPR("<--xgbe_stop\n");
}
