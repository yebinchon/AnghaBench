
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct fm10k_tx_desc {int flags; int buflen; int buffer_addr; } ;
struct fm10k_ring {int count; } ;
typedef int dma_addr_t ;


 int FM10K_TXD_FLAG_INT ;
 int FM10K_TXD_FLAG_RS ;
 int FM10K_TXD_WB_FIFO_SIZE ;
 int cpu_to_le16 (unsigned int) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static bool fm10k_tx_desc_push(struct fm10k_ring *tx_ring,
          struct fm10k_tx_desc *tx_desc, u16 i,
          dma_addr_t dma, unsigned int size, u8 desc_flags)
{

 if ((++i & (FM10K_TXD_WB_FIFO_SIZE - 1)) == 0)
  desc_flags |= FM10K_TXD_FLAG_RS | FM10K_TXD_FLAG_INT;


 tx_desc->buffer_addr = cpu_to_le64(dma);
 tx_desc->flags = desc_flags;
 tx_desc->buflen = cpu_to_le16(size);


 return i == tx_ring->count;
}
