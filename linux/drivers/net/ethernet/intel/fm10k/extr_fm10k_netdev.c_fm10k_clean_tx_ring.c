
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct fm10k_tx_buffer {int dummy; } ;
struct fm10k_ring {size_t count; unsigned long size; struct fm10k_tx_buffer* desc; struct fm10k_tx_buffer* tx_buffer; } ;


 int fm10k_unmap_and_free_tx_resource (struct fm10k_ring*,struct fm10k_tx_buffer*) ;
 int memset (struct fm10k_tx_buffer*,int ,unsigned long) ;
 int netdev_tx_reset_queue (int ) ;
 int txring_txq (struct fm10k_ring*) ;

__attribute__((used)) static void fm10k_clean_tx_ring(struct fm10k_ring *tx_ring)
{
 unsigned long size;
 u16 i;


 if (!tx_ring->tx_buffer)
  return;


 for (i = 0; i < tx_ring->count; i++) {
  struct fm10k_tx_buffer *tx_buffer = &tx_ring->tx_buffer[i];

  fm10k_unmap_and_free_tx_resource(tx_ring, tx_buffer);
 }


 netdev_tx_reset_queue(txring_txq(tx_ring));

 size = sizeof(struct fm10k_tx_buffer) * tx_ring->count;
 memset(tx_ring->tx_buffer, 0, size);


 memset(tx_ring->desc, 0, tx_ring->size);
}
