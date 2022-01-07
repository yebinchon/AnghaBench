
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int mtu; int dev_addr; } ;
struct fjes_hw {int max_epid; int my_epid; int rx_status_lock; TYPE_3__* ep_shm_info; } ;
struct fjes_adapter {int napi; int tx_stall_task; struct fjes_hw hw; } ;
struct TYPE_8__ {TYPE_2__* info; } ;
struct TYPE_7__ {TYPE_4__ tx; } ;
struct TYPE_5__ {int rx_status; } ;
struct TYPE_6__ {TYPE_1__ v1i; } ;


 int EINVAL ;
 int FJES_RX_MTU_CHANGING_DONE ;
 int cancel_work_sync (int *) ;
 int fjes_hw_setup_epbuf (TYPE_4__*,int ,int) ;
 int* fjes_support_mtu ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fjes_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 bool running = netif_running(netdev);
 struct fjes_hw *hw = &adapter->hw;
 unsigned long flags;
 int ret = -EINVAL;
 int idx, epidx;

 for (idx = 0; fjes_support_mtu[idx] != 0; idx++) {
  if (new_mtu <= fjes_support_mtu[idx]) {
   new_mtu = fjes_support_mtu[idx];
   if (new_mtu == netdev->mtu)
    return 0;

   ret = 0;
   break;
  }
 }

 if (ret)
  return ret;

 if (running) {
  spin_lock_irqsave(&hw->rx_status_lock, flags);
  for (epidx = 0; epidx < hw->max_epid; epidx++) {
   if (epidx == hw->my_epid)
    continue;
   hw->ep_shm_info[epidx].tx.info->v1i.rx_status &=
    ~FJES_RX_MTU_CHANGING_DONE;
  }
  spin_unlock_irqrestore(&hw->rx_status_lock, flags);

  netif_tx_stop_all_queues(netdev);
  netif_carrier_off(netdev);
  cancel_work_sync(&adapter->tx_stall_task);
  napi_disable(&adapter->napi);

  msleep(1000);

  netif_tx_stop_all_queues(netdev);
 }

 netdev->mtu = new_mtu;

 if (running) {
  for (epidx = 0; epidx < hw->max_epid; epidx++) {
   if (epidx == hw->my_epid)
    continue;

   spin_lock_irqsave(&hw->rx_status_lock, flags);
   fjes_hw_setup_epbuf(&hw->ep_shm_info[epidx].tx,
         netdev->dev_addr,
         netdev->mtu);

   hw->ep_shm_info[epidx].tx.info->v1i.rx_status |=
    FJES_RX_MTU_CHANGING_DONE;
   spin_unlock_irqrestore(&hw->rx_status_lock, flags);
  }

  netif_tx_wake_all_queues(netdev);
  netif_carrier_on(netdev);
  napi_enable(&adapter->napi);
  napi_schedule(&adapter->napi);
 }

 return ret;
}
