
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_ring_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct xgbe_ring_data {TYPE_1__ tx; struct xgbe_ring_desc* rdesc; } ;
struct TYPE_4__ {int queue_stopped; } ;
struct xgbe_ring {unsigned int cur; unsigned int dirty; TYPE_2__ tx; } ;
struct xgbe_desc_if {int (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_hw_if {int (* tx_desc_reset ) (struct xgbe_ring_data*) ;scalar_t__ (* is_last_desc ) (struct xgbe_ring_desc*) ;int (* tx_complete ) (struct xgbe_ring_desc*) ;} ;
struct xgbe_prv_data {struct net_device* netdev; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int queue_index; struct xgbe_ring* tx_ring; struct xgbe_prv_data* pdata; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int DBGPR (char*,...) ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int XGBE_TX_DESC_MAX_PROC ;
 scalar_t__ XGBE_TX_DESC_MIN_FREE ;
 int dma_rmb () ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;
 scalar_t__ netif_msg_tx_done (struct xgbe_prv_data*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int smp_rmb () ;
 int stub1 (struct xgbe_ring_desc*) ;
 scalar_t__ stub2 (struct xgbe_ring_desc*) ;
 int stub3 (struct xgbe_prv_data*,struct xgbe_ring_data*) ;
 int stub4 (struct xgbe_ring_data*) ;
 int xgbe_dump_tx_desc (struct xgbe_prv_data*,struct xgbe_ring*,unsigned int,int,int ) ;
 scalar_t__ xgbe_tx_avail_desc (struct xgbe_ring*) ;

__attribute__((used)) static int xgbe_tx_poll(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct xgbe_ring *ring = channel->tx_ring;
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;
 struct net_device *netdev = pdata->netdev;
 struct netdev_queue *txq;
 int processed = 0;
 unsigned int tx_packets = 0, tx_bytes = 0;
 unsigned int cur;

 DBGPR("-->xgbe_tx_poll\n");


 if (!ring)
  return 0;

 cur = ring->cur;


 smp_rmb();

 txq = netdev_get_tx_queue(netdev, channel->queue_index);

 while ((processed < XGBE_TX_DESC_MAX_PROC) &&
        (ring->dirty != cur)) {
  rdata = XGBE_GET_DESC_DATA(ring, ring->dirty);
  rdesc = rdata->rdesc;

  if (!hw_if->tx_complete(rdesc))
   break;



  dma_rmb();

  if (netif_msg_tx_done(pdata))
   xgbe_dump_tx_desc(pdata, ring, ring->dirty, 1, 0);

  if (hw_if->is_last_desc(rdesc)) {
   tx_packets += rdata->tx.packets;
   tx_bytes += rdata->tx.bytes;
  }


  desc_if->unmap_rdata(pdata, rdata);
  hw_if->tx_desc_reset(rdata);

  processed++;
  ring->dirty++;
 }

 if (!processed)
  return 0;

 netdev_tx_completed_queue(txq, tx_packets, tx_bytes);

 if ((ring->tx.queue_stopped == 1) &&
     (xgbe_tx_avail_desc(ring) > XGBE_TX_DESC_MIN_FREE)) {
  ring->tx.queue_stopped = 0;
  netif_tx_wake_queue(txq);
 }

 DBGPR("<--xgbe_tx_poll: processed=%d\n", processed);

 return processed;
}
