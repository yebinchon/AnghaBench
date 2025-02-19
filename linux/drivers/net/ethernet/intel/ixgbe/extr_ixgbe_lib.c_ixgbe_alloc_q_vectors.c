
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ixgbe_adapter {int num_q_vectors; int num_rx_queues; int num_tx_queues; int num_xdp_queues; int flags; TYPE_3__** xdp_ring; TYPE_2__** tx_ring; TYPE_1__** rx_ring; } ;
struct TYPE_6__ {int ring_idx; } ;
struct TYPE_5__ {int ring_idx; } ;
struct TYPE_4__ {int ring_idx; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int ixgbe_alloc_q_vector (struct ixgbe_adapter*,int,int,int,int,int,int,int,int) ;
 int ixgbe_free_q_vector (struct ixgbe_adapter*,int) ;

__attribute__((used)) static int ixgbe_alloc_q_vectors(struct ixgbe_adapter *adapter)
{
 int q_vectors = adapter->num_q_vectors;
 int rxr_remaining = adapter->num_rx_queues;
 int txr_remaining = adapter->num_tx_queues;
 int xdp_remaining = adapter->num_xdp_queues;
 int rxr_idx = 0, txr_idx = 0, xdp_idx = 0, v_idx = 0;
 int err, i;


 if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED))
  q_vectors = 1;

 if (q_vectors >= (rxr_remaining + txr_remaining + xdp_remaining)) {
  for (; rxr_remaining; v_idx++) {
   err = ixgbe_alloc_q_vector(adapter, q_vectors, v_idx,
         0, 0, 0, 0, 1, rxr_idx);

   if (err)
    goto err_out;


   rxr_remaining--;
   rxr_idx++;
  }
 }

 for (; v_idx < q_vectors; v_idx++) {
  int rqpv = DIV_ROUND_UP(rxr_remaining, q_vectors - v_idx);
  int tqpv = DIV_ROUND_UP(txr_remaining, q_vectors - v_idx);
  int xqpv = DIV_ROUND_UP(xdp_remaining, q_vectors - v_idx);

  err = ixgbe_alloc_q_vector(adapter, q_vectors, v_idx,
        tqpv, txr_idx,
        xqpv, xdp_idx,
        rqpv, rxr_idx);

  if (err)
   goto err_out;


  rxr_remaining -= rqpv;
  txr_remaining -= tqpv;
  xdp_remaining -= xqpv;
  rxr_idx++;
  txr_idx++;
  xdp_idx += xqpv;
 }

 for (i = 0; i < adapter->num_rx_queues; i++) {
  if (adapter->rx_ring[i])
   adapter->rx_ring[i]->ring_idx = i;
 }

 for (i = 0; i < adapter->num_tx_queues; i++) {
  if (adapter->tx_ring[i])
   adapter->tx_ring[i]->ring_idx = i;
 }

 for (i = 0; i < adapter->num_xdp_queues; i++) {
  if (adapter->xdp_ring[i])
   adapter->xdp_ring[i]->ring_idx = i;
 }

 return 0;

err_out:
 adapter->num_tx_queues = 0;
 adapter->num_xdp_queues = 0;
 adapter->num_rx_queues = 0;
 adapter->num_q_vectors = 0;

 while (v_idx--)
  ixgbe_free_q_vector(adapter, v_idx);

 return -ENOMEM;
}
