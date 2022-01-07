
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fjes_hw {int max_epid; int my_epid; int epstop_task; int update_zone_task; int rx_status_lock; TYPE_4__* ep_shm_info; } ;
struct fjes_adapter {int tx_stall_task; int raise_intr_rxdata_task; scalar_t__ unshare_watch_bitmask; int unshare_watch_task; int interrupt_watch_task; struct fjes_hw hw; int napi; } ;
struct TYPE_7__ {TYPE_2__* info; } ;
struct TYPE_8__ {TYPE_3__ tx; } ;
struct TYPE_5__ {int rx_status; } ;
struct TYPE_6__ {TYPE_1__ v1i; } ;


 scalar_t__ EP_PARTNER_SHARED ;
 int FJES_RX_POLL_WORK ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int fjes_free_irq (struct fjes_adapter*) ;
 int fjes_free_resources (struct fjes_adapter*) ;
 scalar_t__ fjes_hw_get_partner_ep_status (struct fjes_hw*,int) ;
 int fjes_hw_raise_epstop (struct fjes_hw*) ;
 int fjes_hw_wait_epstop (struct fjes_hw*) ;
 int napi_disable (int *) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fjes_close(struct net_device *netdev)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;
 unsigned long flags;
 int epidx;

 netif_tx_stop_all_queues(netdev);
 netif_carrier_off(netdev);

 fjes_hw_raise_epstop(hw);

 napi_disable(&adapter->napi);

 spin_lock_irqsave(&hw->rx_status_lock, flags);
 for (epidx = 0; epidx < hw->max_epid; epidx++) {
  if (epidx == hw->my_epid)
   continue;

  if (fjes_hw_get_partner_ep_status(hw, epidx) ==
      EP_PARTNER_SHARED)
   adapter->hw.ep_shm_info[epidx]
       .tx.info->v1i.rx_status &=
    ~FJES_RX_POLL_WORK;
 }
 spin_unlock_irqrestore(&hw->rx_status_lock, flags);

 fjes_free_irq(adapter);

 cancel_delayed_work_sync(&adapter->interrupt_watch_task);
 cancel_work_sync(&adapter->unshare_watch_task);
 adapter->unshare_watch_bitmask = 0;
 cancel_work_sync(&adapter->raise_intr_rxdata_task);
 cancel_work_sync(&adapter->tx_stall_task);

 cancel_work_sync(&hw->update_zone_task);
 cancel_work_sync(&hw->epstop_task);

 fjes_hw_wait_epstop(hw);

 fjes_free_resources(adapter);

 return 0;
}
