
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_ring {size_t count; int size; int netdev; scalar_t__ next_to_clean; scalar_t__ next_to_use; int * desc; int * tx_buf; } ;


 int ice_unmap_and_free_tx_buf (struct ice_ring*,int *) ;
 int memset (int *,int ,int) ;
 int netdev_tx_reset_queue (int ) ;
 int txring_txq (struct ice_ring*) ;

void ice_clean_tx_ring(struct ice_ring *tx_ring)
{
 u16 i;


 if (!tx_ring->tx_buf)
  return;


 for (i = 0; i < tx_ring->count; i++)
  ice_unmap_and_free_tx_buf(tx_ring, &tx_ring->tx_buf[i]);

 memset(tx_ring->tx_buf, 0, sizeof(*tx_ring->tx_buf) * tx_ring->count);


 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 if (!tx_ring->netdev)
  return;


 netdev_tx_reset_queue(txring_txq(tx_ring));
}
