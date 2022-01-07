
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ixgbe_tx_buffer {scalar_t__ time_stamp; int next_to_watch; } ;
struct ixgbe_ring {size_t next_to_clean; int next_to_use; struct ixgbe_tx_buffer* tx_buffer_info; } ;


 int dma ;
 scalar_t__ dma_unmap_addr (struct ixgbe_tx_buffer*,int ) ;
 int dma_unmap_len (struct ixgbe_tx_buffer*,int ) ;
 int len ;
 int pr_info (char*,int,int ,size_t,int ,int ,int ,int ) ;

__attribute__((used)) static void ixgbe_print_buffer(struct ixgbe_ring *ring, int n)
{
 struct ixgbe_tx_buffer *tx_buffer;

 tx_buffer = &ring->tx_buffer_info[ring->next_to_clean];
 pr_info(" %5d %5X %5X %016llX %08X %p %016llX\n",
  n, ring->next_to_use, ring->next_to_clean,
  (u64)dma_unmap_addr(tx_buffer, dma),
  dma_unmap_len(tx_buffer, len),
  tx_buffer->next_to_watch,
  (u64)tx_buffer->time_stamp);
}
