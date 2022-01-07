
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdmmc_priv {int sg_cpu; int sg_dma; } ;
struct sdmmc_lli_desc {int dummy; } ;
struct mmci_host {TYPE_2__* mmc; TYPE_1__* variant; struct sdmmc_priv* dma_priv; } ;
struct TYPE_4__ {int max_segs; int max_req_size; int max_seg_size; } ;
struct TYPE_3__ {int stm32_idmabsize_mask; scalar_t__ dma_lli; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SDMMC_LLI_BUF_LEN ;
 int dev_err (int ,char*) ;
 struct sdmmc_priv* devm_kzalloc (int ,int,int ) ;
 int dmam_alloc_coherent (int ,int,int *,int ) ;
 int mmc_dev (TYPE_2__*) ;

__attribute__((used)) static int sdmmc_idma_setup(struct mmci_host *host)
{
 struct sdmmc_priv *idma;

 idma = devm_kzalloc(mmc_dev(host->mmc), sizeof(*idma), GFP_KERNEL);
 if (!idma)
  return -ENOMEM;

 host->dma_priv = idma;

 if (host->variant->dma_lli) {
  idma->sg_cpu = dmam_alloc_coherent(mmc_dev(host->mmc),
         SDMMC_LLI_BUF_LEN,
         &idma->sg_dma, GFP_KERNEL);
  if (!idma->sg_cpu) {
   dev_err(mmc_dev(host->mmc),
    "Failed to alloc IDMA descriptor\n");
   return -ENOMEM;
  }
  host->mmc->max_segs = SDMMC_LLI_BUF_LEN /
   sizeof(struct sdmmc_lli_desc);
  host->mmc->max_seg_size = host->variant->stm32_idmabsize_mask;
 } else {
  host->mmc->max_segs = 1;
  host->mmc->max_seg_size = host->mmc->max_req_size;
 }

 return 0;
}
