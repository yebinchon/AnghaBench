
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queue_stopped; scalar_t__ xmit_more; } ;
struct xgbe_ring {TYPE_2__ tx; } ;
struct TYPE_3__ {int (* tx_start_xmit ) (struct xgbe_channel*,struct xgbe_ring*) ;} ;
struct xgbe_prv_data {TYPE_1__ hw_if; int netdev; } ;
struct xgbe_channel {int queue_index; struct xgbe_prv_data* pdata; } ;


 int NETDEV_TX_BUSY ;
 int drv ;
 int netif_info (struct xgbe_prv_data*,int ,int ,char*) ;
 int netif_stop_subqueue (int ,int ) ;
 int stub1 (struct xgbe_channel*,struct xgbe_ring*) ;
 unsigned int xgbe_tx_avail_desc (struct xgbe_ring*) ;

__attribute__((used)) static int xgbe_maybe_stop_tx_queue(struct xgbe_channel *channel,
        struct xgbe_ring *ring, unsigned int count)
{
 struct xgbe_prv_data *pdata = channel->pdata;

 if (count > xgbe_tx_avail_desc(ring)) {
  netif_info(pdata, drv, pdata->netdev,
      "Tx queue stopped, not enough descriptors available\n");
  netif_stop_subqueue(pdata->netdev, channel->queue_index);
  ring->tx.queue_stopped = 1;




  if (ring->tx.xmit_more)
   pdata->hw_if.tx_start_xmit(channel, ring);

  return NETDEV_TX_BUSY;
 }

 return 0;
}
