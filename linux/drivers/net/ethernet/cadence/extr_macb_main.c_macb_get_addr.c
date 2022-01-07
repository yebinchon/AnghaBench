
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct macb_dma_desc_64 {scalar_t__ addrh; } ;
struct macb_dma_desc {int addr; } ;
struct macb {int hw_dma_cap; } ;
typedef int dma_addr_t ;


 int HW_DMA_CAP_64B ;
 int MACB_BF (int ,int ) ;
 int MACB_BFEXT (int ,int ) ;
 int RX_WADDR ;
 struct macb_dma_desc_64* macb_64b_desc (struct macb*,struct macb_dma_desc*) ;

__attribute__((used)) static dma_addr_t macb_get_addr(struct macb *bp, struct macb_dma_desc *desc)
{
 dma_addr_t addr = 0;
 addr |= MACB_BF(RX_WADDR, MACB_BFEXT(RX_WADDR, desc->addr));
 return addr;
}
