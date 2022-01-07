
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvaser_pciefd {scalar_t__ reg_base; } ;
typedef int dma_addr_t ;


 int KVASER_PCIEFD_64BIT_DMA_BIT ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void kvaser_pciefd_write_dma_map(struct kvaser_pciefd *pcie,
     dma_addr_t addr, int offset)
{
 u32 word1, word2;





 word1 = addr;
 word2 = 0;

 iowrite32(word1, pcie->reg_base + offset);
 iowrite32(word2, pcie->reg_base + offset + 4);
}
