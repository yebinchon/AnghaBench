
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int (* stop_hw ) (struct fm10k_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; int hw_addr; } ;
struct fm10k_intfc {int num_tx_queues; TYPE_3__* pdev; int * tx_ring; int state; struct fm10k_hw hw; struct net_device* netdev; } ;
struct TYPE_6__ {int dev; } ;


 int FM10K_ERR_REQUESTS_PENDING ;
 scalar_t__ FM10K_REMOVED (int ) ;
 int TX_DMA_DRAIN_RETRIES ;
 int __FM10K_DOWN ;
 int __FM10K_UPDATING_STATS ;
 int dev_err (int *,char*,...) ;
 int fm10k_clean_all_rx_rings (struct fm10k_intfc*) ;
 int fm10k_clean_all_tx_rings (struct fm10k_intfc*) ;
 scalar_t__ fm10k_get_tx_pending (int ,int) ;
 int fm10k_napi_disable_all (struct fm10k_intfc*) ;
 int fm10k_reset_rx_state (struct fm10k_intfc*) ;
 int fm10k_update_stats (struct fm10k_intfc*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int stub1 (struct fm10k_hw*) ;
 int stub2 (struct fm10k_hw*) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

void fm10k_down(struct fm10k_intfc *interface)
{
 struct net_device *netdev = interface->netdev;
 struct fm10k_hw *hw = &interface->hw;
 int err, i = 0, count = 0;


 if (test_and_set_bit(__FM10K_DOWN, interface->state))
  return;


 netif_carrier_off(netdev);


 netif_tx_stop_all_queues(netdev);
 netif_tx_disable(netdev);


 fm10k_reset_rx_state(interface);


 fm10k_napi_disable_all(interface);


 fm10k_update_stats(interface);


 while (test_and_set_bit(__FM10K_UPDATING_STATS, interface->state))
  usleep_range(1000, 2000);


 if (FM10K_REMOVED(hw->hw_addr))
  goto skip_tx_dma_drain;
 err = hw->mac.ops.stop_hw(hw);
 if (err != FM10K_ERR_REQUESTS_PENDING)
  goto skip_tx_dma_drain;


 for (count = 0; count < 25; count++) {
  usleep_range(10000, 20000);


  for (; i < interface->num_tx_queues; i++)
   if (fm10k_get_tx_pending(interface->tx_ring[i], 0))
    break;


  if (i == interface->num_tx_queues)
   break;
 }

 if (count >= 25)
  dev_err(&interface->pdev->dev,
   "Tx queues failed to drain after %d tries. Tx DMA is probably hung.\n",
   count);
skip_tx_dma_drain:

 err = hw->mac.ops.stop_hw(hw);
 if (err == FM10K_ERR_REQUESTS_PENDING)
  dev_err(&interface->pdev->dev,
   "due to pending requests hw was not shut down gracefully\n");
 else if (err)
  dev_err(&interface->pdev->dev, "stop_hw failed: %d\n", err);


 fm10k_clean_all_tx_rings(interface);
 fm10k_clean_all_rx_rings(interface);
}
