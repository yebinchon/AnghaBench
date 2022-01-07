
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iavf_tx_buffer {int dummy; } ;
struct iavf_ring {size_t count; unsigned long size; int netdev; scalar_t__ next_to_clean; scalar_t__ next_to_use; int * desc; int * tx_bi; } ;


 int iavf_unmap_and_free_tx_resource (struct iavf_ring*,int *) ;
 int memset (int *,int ,unsigned long) ;
 int netdev_tx_reset_queue (int ) ;
 int txring_txq (struct iavf_ring*) ;

void iavf_clean_tx_ring(struct iavf_ring *tx_ring)
{
 unsigned long bi_size;
 u16 i;


 if (!tx_ring->tx_bi)
  return;


 for (i = 0; i < tx_ring->count; i++)
  iavf_unmap_and_free_tx_resource(tx_ring, &tx_ring->tx_bi[i]);

 bi_size = sizeof(struct iavf_tx_buffer) * tx_ring->count;
 memset(tx_ring->tx_bi, 0, bi_size);


 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 if (!tx_ring->netdev)
  return;


 netdev_tx_reset_queue(txring_txq(tx_ring));
}
