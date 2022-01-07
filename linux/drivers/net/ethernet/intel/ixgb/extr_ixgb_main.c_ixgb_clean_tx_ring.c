
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgb_desc_ring {unsigned int count; unsigned long size; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct ixgb_buffer* desc; struct ixgb_buffer* buffer_info; } ;
struct ixgb_buffer {int dummy; } ;
struct ixgb_adapter {int hw; struct ixgb_desc_ring tx_ring; } ;


 int IXGB_WRITE_REG (int *,int ,int ) ;
 int TDH ;
 int TDT ;
 int ixgb_unmap_and_free_tx_resource (struct ixgb_adapter*,struct ixgb_buffer*) ;
 int memset (struct ixgb_buffer*,int ,unsigned long) ;

__attribute__((used)) static void
ixgb_clean_tx_ring(struct ixgb_adapter *adapter)
{
 struct ixgb_desc_ring *tx_ring = &adapter->tx_ring;
 struct ixgb_buffer *buffer_info;
 unsigned long size;
 unsigned int i;



 for (i = 0; i < tx_ring->count; i++) {
  buffer_info = &tx_ring->buffer_info[i];
  ixgb_unmap_and_free_tx_resource(adapter, buffer_info);
 }

 size = sizeof(struct ixgb_buffer) * tx_ring->count;
 memset(tx_ring->buffer_info, 0, size);



 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 IXGB_WRITE_REG(&adapter->hw, TDH, 0);
 IXGB_WRITE_REG(&adapter->hw, TDT, 0);
}
