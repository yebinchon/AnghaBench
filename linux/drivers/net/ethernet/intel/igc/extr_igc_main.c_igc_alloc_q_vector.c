
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igc_ring {unsigned int queue_index; int count; struct igc_q_vector* q_vector; int netdev; int * dev; } ;
struct TYPE_4__ {int work_limit; } ;
struct igc_q_vector {int itr_val; TYPE_2__ rx; TYPE_2__ tx; struct igc_ring* ring; scalar_t__ itr_register; struct igc_adapter* adapter; int napi; } ;
struct igc_adapter {int rx_itr_setting; int tx_itr_setting; struct igc_ring** rx_ring; int rx_ring_count; int netdev; TYPE_1__* pdev; struct igc_ring** tx_ring; int tx_ring_count; scalar_t__ io_addr; int tx_work_limit; struct igc_q_vector** q_vector; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IGC_EITR (int ) ;
 int IGC_START_ITR ;
 int igc_add_ring (struct igc_ring*,TYPE_2__*) ;
 int igc_poll ;
 struct igc_q_vector* kzalloc (int ,int ) ;
 int memset (struct igc_q_vector*,int ,int ) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int struct_size (struct igc_q_vector*,struct igc_ring*,int) ;

__attribute__((used)) static int igc_alloc_q_vector(struct igc_adapter *adapter,
         unsigned int v_count, unsigned int v_idx,
         unsigned int txr_count, unsigned int txr_idx,
         unsigned int rxr_count, unsigned int rxr_idx)
{
 struct igc_q_vector *q_vector;
 struct igc_ring *ring;
 int ring_count;


 if (txr_count > 1 || rxr_count > 1)
  return -ENOMEM;

 ring_count = txr_count + rxr_count;


 q_vector = adapter->q_vector[v_idx];
 if (!q_vector)
  q_vector = kzalloc(struct_size(q_vector, ring, ring_count),
       GFP_KERNEL);
 else
  memset(q_vector, 0, struct_size(q_vector, ring, ring_count));
 if (!q_vector)
  return -ENOMEM;


 netif_napi_add(adapter->netdev, &q_vector->napi,
         igc_poll, 64);


 adapter->q_vector[v_idx] = q_vector;
 q_vector->adapter = adapter;


 q_vector->tx.work_limit = adapter->tx_work_limit;


 q_vector->itr_register = adapter->io_addr + IGC_EITR(0);
 q_vector->itr_val = IGC_START_ITR;


 ring = q_vector->ring;


 if (rxr_count) {

  if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
   q_vector->itr_val = adapter->rx_itr_setting;
 } else {

  if (!adapter->tx_itr_setting || adapter->tx_itr_setting > 3)
   q_vector->itr_val = adapter->tx_itr_setting;
 }

 if (txr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  igc_add_ring(ring, &q_vector->tx);


  ring->count = adapter->tx_ring_count;
  ring->queue_index = txr_idx;


  adapter->tx_ring[txr_idx] = ring;


  ring++;
 }

 if (rxr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  igc_add_ring(ring, &q_vector->rx);


  ring->count = adapter->rx_ring_count;
  ring->queue_index = rxr_idx;


  adapter->rx_ring[rxr_idx] = ring;
 }

 return 0;
}
