
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct i40e_tx_buffer {int dummy; } ;
struct i40e_ring {size_t count; unsigned long size; int netdev; scalar_t__ next_to_clean; scalar_t__ next_to_use; int * desc; int * tx_bi; scalar_t__ xsk_umem; } ;


 int i40e_unmap_and_free_tx_resource (struct i40e_ring*,int *) ;
 int i40e_xsk_clean_tx_ring (struct i40e_ring*) ;
 int memset (int *,int ,unsigned long) ;
 int netdev_tx_reset_queue (int ) ;
 scalar_t__ ring_is_xdp (struct i40e_ring*) ;
 int txring_txq (struct i40e_ring*) ;

void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
{
 unsigned long bi_size;
 u16 i;

 if (ring_is_xdp(tx_ring) && tx_ring->xsk_umem) {
  i40e_xsk_clean_tx_ring(tx_ring);
 } else {

  if (!tx_ring->tx_bi)
   return;


  for (i = 0; i < tx_ring->count; i++)
   i40e_unmap_and_free_tx_resource(tx_ring,
       &tx_ring->tx_bi[i]);
 }

 bi_size = sizeof(struct i40e_tx_buffer) * tx_ring->count;
 memset(tx_ring->tx_bi, 0, bi_size);


 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 if (!tx_ring->netdev)
  return;


 netdev_tx_reset_queue(txring_txq(tx_ring));
}
