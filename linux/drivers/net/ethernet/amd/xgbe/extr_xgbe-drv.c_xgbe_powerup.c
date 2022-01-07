
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* powerup_rx ) (struct xgbe_prv_data*) ;int (* powerup_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int lock; scalar_t__ power_down; struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;


 int DBGPR (char*) ;
 int EINVAL ;
 unsigned int XGMAC_DRIVER_CONTEXT ;
 unsigned int XGMAC_IOCTL_CONTEXT ;
 int netdev_alert (struct net_device*,char*) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int xgbe_napi_enable (struct xgbe_prv_data*,int ) ;
 int xgbe_start_timers (struct xgbe_prv_data*) ;

int xgbe_powerup(struct net_device *netdev, unsigned int caller)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 unsigned long flags;

 DBGPR("-->xgbe_powerup\n");

 if (!netif_running(netdev) ||
     (caller == XGMAC_IOCTL_CONTEXT && !pdata->power_down)) {
  netdev_alert(netdev, "Device is already powered up\n");
  DBGPR("<--xgbe_powerup\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&pdata->lock, flags);

 pdata->power_down = 0;

 xgbe_napi_enable(pdata, 0);

 hw_if->powerup_tx(pdata);
 hw_if->powerup_rx(pdata);

 if (caller == XGMAC_DRIVER_CONTEXT)
  netif_device_attach(netdev);

 netif_tx_start_all_queues(netdev);

 xgbe_start_timers(pdata);

 spin_unlock_irqrestore(&pdata->lock, flags);

 DBGPR("<--xgbe_powerup\n");

 return 0;
}
