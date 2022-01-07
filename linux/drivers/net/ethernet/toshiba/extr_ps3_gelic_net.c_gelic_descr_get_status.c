
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_descr {int dmac_cmd_status; } ;
typedef enum gelic_descr_dma_status { ____Placeholder_gelic_descr_dma_status } gelic_descr_dma_status ;


 int GELIC_DESCR_DMA_STAT_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static enum gelic_descr_dma_status
gelic_descr_get_status(struct gelic_descr *descr)
{
 return be32_to_cpu(descr->dmac_cmd_status) & GELIC_DESCR_DMA_STAT_MASK;
}
