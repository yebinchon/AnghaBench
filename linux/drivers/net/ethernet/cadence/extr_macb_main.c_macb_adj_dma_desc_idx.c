
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int hw_dma_cap; } ;






__attribute__((used)) static unsigned int macb_adj_dma_desc_idx(struct macb *bp, unsigned int desc_idx)
{
 return desc_idx;
}
