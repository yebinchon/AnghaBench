
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct fjes_hw {int dummy; } ;
struct fjes_adapter {int napi; scalar_t__ txrx_wq; scalar_t__ control_wq; int tx_stall_task; int raise_intr_rxdata_task; int unshare_watch_task; int interrupt_watch_task; struct fjes_hw hw; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;
 struct net_device* dev_get_drvdata (int *) ;
 int fjes_dbg_adapter_exit (struct fjes_adapter*) ;
 int fjes_hw_exit (struct fjes_hw*) ;
 int free_netdev (struct net_device*) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int fjes_remove(struct platform_device *plat_dev)
{
 struct net_device *netdev = dev_get_drvdata(&plat_dev->dev);
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;

 fjes_dbg_adapter_exit(adapter);

 cancel_delayed_work_sync(&adapter->interrupt_watch_task);
 cancel_work_sync(&adapter->unshare_watch_task);
 cancel_work_sync(&adapter->raise_intr_rxdata_task);
 cancel_work_sync(&adapter->tx_stall_task);
 if (adapter->control_wq)
  destroy_workqueue(adapter->control_wq);
 if (adapter->txrx_wq)
  destroy_workqueue(adapter->txrx_wq);

 unregister_netdev(netdev);

 fjes_hw_exit(hw);

 netif_napi_del(&adapter->napi);

 free_netdev(netdev);

 return 0;
}
