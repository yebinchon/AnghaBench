
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_dma_desc_ptp {int dummy; } ;
struct macb_dma_desc_64 {int dummy; } ;
struct macb_dma_desc {int dummy; } ;
struct macb {int hw_dma_cap; } ;






__attribute__((used)) static unsigned int macb_dma_desc_get_size(struct macb *bp)
{
 return sizeof(struct macb_dma_desc);
}
