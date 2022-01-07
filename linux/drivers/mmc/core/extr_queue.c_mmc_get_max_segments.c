
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {unsigned int max_segs; scalar_t__ can_dma_map_merge; } ;


 unsigned int MMC_DMA_MAP_MERGE_SEGMENTS ;

__attribute__((used)) static unsigned int mmc_get_max_segments(struct mmc_host *host)
{
 return host->can_dma_map_merge ? MMC_DMA_MAP_MERGE_SEGMENTS :
      host->max_segs;
}
