
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {unsigned int bounce_buffer_size; int bounce_addr; int bounce_buffer; struct mmc_host* mmc; } ;
struct mmc_host {unsigned int max_req_size; unsigned int max_segs; unsigned int max_seg_size; int parent; } ;


 int DMA_BIDIRECTIONAL ;
 int GFP_KERNEL ;
 unsigned int SZ_64K ;
 int devm_kmalloc (int ,unsigned int,int ) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_err (char*,int ,unsigned int) ;
 int pr_info (char*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void sdhci_allocate_bounce_buffer(struct sdhci_host *host)
{
 struct mmc_host *mmc = host->mmc;
 unsigned int max_blocks;
 unsigned int bounce_size;
 int ret;






 bounce_size = SZ_64K;





 if (mmc->max_req_size < bounce_size)
  bounce_size = mmc->max_req_size;
 max_blocks = bounce_size / 512;






 host->bounce_buffer = devm_kmalloc(mmc->parent,
        bounce_size,
        GFP_KERNEL);
 if (!host->bounce_buffer) {
  pr_err("%s: failed to allocate %u bytes for bounce buffer, falling back to single segments\n",
         mmc_hostname(mmc),
         bounce_size);




  return;
 }

 host->bounce_addr = dma_map_single(mmc->parent,
        host->bounce_buffer,
        bounce_size,
        DMA_BIDIRECTIONAL);
 ret = dma_mapping_error(mmc->parent, host->bounce_addr);
 if (ret)

  return;
 host->bounce_buffer_size = bounce_size;


 mmc->max_segs = max_blocks;
 mmc->max_seg_size = bounce_size;
 mmc->max_req_size = bounce_size;

 pr_info("%s bounce up to %u segments into one, max segment size %u bytes\n",
  mmc_hostname(mmc), max_blocks, bounce_size);
}
