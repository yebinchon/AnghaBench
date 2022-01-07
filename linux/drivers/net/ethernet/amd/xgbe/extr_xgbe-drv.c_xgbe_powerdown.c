
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* powerdown_rx ) (struct xgbe_prv_data*) ;int (* powerdown_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int power_down; int lock; int dev_workqueue; struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;


 int DBGPR (char*) ;
 int EINVAL ;
 unsigned int XGMAC_DRIVER_CONTEXT ;
 unsigned int XGMAC_IOCTL_CONTEXT ;
 int flush_workqueue (int ) ;
 int netdev_alert (struct net_device*,char*) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int xgbe_napi_disable (struct xgbe_prv_data*,int ) ;
 int xgbe_stop_timers (struct xgbe_prv_data*) ;

int xgbe_powerdown(struct net_device *netdev, unsigned int caller)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 unsigned long flags;

 DBGPR("-->xgbe_powerdown\n");

 if (!netif_running(netdev) ||
     (caller == XGMAC_IOCTL_CONTEXT && pdata->power_down)) {
  netdev_alert(netdev, "Device is already powered down\n");
  DBGPR("<--xgbe_powerdown\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&pdata->lock, flags);

 if (caller == XGMAC_DRIVER_CONTEXT)
  netif_device_detach(netdev);

 netif_tx_stop_all_queues(netdev);

 xgbe_stop_timers(pdata);
 flush_workqueue(pdata->dev_workqueue);

 hw_if->powerdown_tx(pdata);
 hw_if->powerdown_rx(pdata);

 xgbe_napi_disable(pdata, 0);

 pdata->power_down = 1;

 spin_unlock_irqrestore(&pdata->lock, flags);

 DBGPR("<--xgbe_powerdown\n");

 return 0;
}
