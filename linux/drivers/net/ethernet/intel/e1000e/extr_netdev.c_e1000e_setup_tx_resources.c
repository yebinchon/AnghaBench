
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_tx_desc {int dummy; } ;
struct e1000_ring {int count; int size; int buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int dummy; } ;
struct e1000_adapter {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int e1000_alloc_ring_dma (struct e1000_adapter*,struct e1000_ring*) ;
 int e_err (char*) ;
 int vfree (int ) ;
 int vzalloc (int) ;

int e1000e_setup_tx_resources(struct e1000_ring *tx_ring)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 int err = -ENOMEM, size;

 size = sizeof(struct e1000_buffer) * tx_ring->count;
 tx_ring->buffer_info = vzalloc(size);
 if (!tx_ring->buffer_info)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(struct e1000_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 err = e1000_alloc_ring_dma(adapter, tx_ring);
 if (err)
  goto err;

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 return 0;
err:
 vfree(tx_ring->buffer_info);
 e_err("Unable to allocate memory for the transmit descriptor ring\n");
 return err;
}
