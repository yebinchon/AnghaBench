
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_ring {int queue_index; int reg_idx; int count; struct ixgbevf_q_vector* q_vector; int netdev; int * dev; } ;
struct ixgbevf_q_vector {int v_idx; int rx; int tx; struct ixgbevf_ring* ring; struct ixgbevf_adapter* adapter; int napi; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** rx_ring; int rx_ring_count; int netdev; TYPE_1__* pdev; struct ixgbevf_ring** xdp_ring; int tx_ring_count; struct ixgbevf_ring** tx_ring; struct ixgbevf_q_vector** q_vector; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ixgbevf_add_ring (struct ixgbevf_ring*,int *) ;
 int ixgbevf_poll ;
 struct ixgbevf_q_vector* kzalloc (int,int ) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int set_ring_xdp (struct ixgbevf_ring*) ;

__attribute__((used)) static int ixgbevf_alloc_q_vector(struct ixgbevf_adapter *adapter, int v_idx,
      int txr_count, int txr_idx,
      int xdp_count, int xdp_idx,
      int rxr_count, int rxr_idx)
{
 struct ixgbevf_q_vector *q_vector;
 int reg_idx = txr_idx + xdp_idx;
 struct ixgbevf_ring *ring;
 int ring_count, size;

 ring_count = txr_count + xdp_count + rxr_count;
 size = sizeof(*q_vector) + (sizeof(*ring) * ring_count);


 q_vector = kzalloc(size, GFP_KERNEL);
 if (!q_vector)
  return -ENOMEM;


 netif_napi_add(adapter->netdev, &q_vector->napi, ixgbevf_poll, 64);


 adapter->q_vector[v_idx] = q_vector;
 q_vector->adapter = adapter;
 q_vector->v_idx = v_idx;


 ring = q_vector->ring;

 while (txr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  ixgbevf_add_ring(ring, &q_vector->tx);


  ring->count = adapter->tx_ring_count;
  ring->queue_index = txr_idx;
  ring->reg_idx = reg_idx;


   adapter->tx_ring[txr_idx] = ring;


  txr_count--;
  txr_idx++;
  reg_idx++;


  ring++;
 }

 while (xdp_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  ixgbevf_add_ring(ring, &q_vector->tx);


  ring->count = adapter->tx_ring_count;
  ring->queue_index = xdp_idx;
  ring->reg_idx = reg_idx;
  set_ring_xdp(ring);


  adapter->xdp_ring[xdp_idx] = ring;


  xdp_count--;
  xdp_idx++;
  reg_idx++;


  ring++;
 }

 while (rxr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  ixgbevf_add_ring(ring, &q_vector->rx);


  ring->count = adapter->rx_ring_count;
  ring->queue_index = rxr_idx;
  ring->reg_idx = rxr_idx;


  adapter->rx_ring[rxr_idx] = ring;


  rxr_count--;
  rxr_idx++;


  ring++;
 }

 return 0;
}
