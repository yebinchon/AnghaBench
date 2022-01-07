
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_ring {unsigned int count; unsigned long size; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct e1000_buffer* desc; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int dummy; } ;
struct e1000_adapter {int netdev; } ;


 int e1000_put_txbuf (struct e1000_ring*,struct e1000_buffer*,int) ;
 int memset (struct e1000_buffer*,int ,unsigned long) ;
 int netdev_reset_queue (int ) ;

__attribute__((used)) static void e1000_clean_tx_ring(struct e1000_ring *tx_ring)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 struct e1000_buffer *buffer_info;
 unsigned long size;
 unsigned int i;

 for (i = 0; i < tx_ring->count; i++) {
  buffer_info = &tx_ring->buffer_info[i];
  e1000_put_txbuf(tx_ring, buffer_info, 0);
 }

 netdev_reset_queue(adapter->netdev);
 size = sizeof(struct e1000_buffer) * tx_ring->count;
 memset(tx_ring->buffer_info, 0, size);

 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
}
