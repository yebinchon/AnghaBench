
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_dma_desc_64 {int addrh; } ;
struct macb_dma_desc {int addr; } ;
struct macb {int hw_dma_cap; } ;
typedef int dma_addr_t ;


 int HW_DMA_CAP_64B ;
 int dma_wmb () ;
 int lower_32_bits (int ) ;
 struct macb_dma_desc_64* macb_64b_desc (struct macb*,struct macb_dma_desc*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void macb_set_addr(struct macb *bp, struct macb_dma_desc *desc, dma_addr_t addr)
{
 desc->addr = lower_32_bits(addr);
}
