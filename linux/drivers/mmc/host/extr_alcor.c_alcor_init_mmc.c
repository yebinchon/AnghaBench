
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int max_blk_count; int max_req_size; int max_blk_size; int max_seg_size; int max_segs; int * ops; int caps2; int ocr_avail; int f_max; int f_min; } ;
struct alcor_sdmmc_host {int dev; } ;


 int AU6601_MAX_CLOCK ;
 int AU6601_MAX_DMA_BLOCK_SIZE ;
 int AU6601_MAX_DMA_SEGMENTS ;
 int AU6601_MIN_CLOCK ;
 int MMC_CAP2_NO_SDIO ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_SD_HIGHSPEED ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int MMC_VDD_33_34 ;
 int alcor_sdc_ops ;
 int dma_set_max_seg_size (int ,int ) ;
 struct mmc_host* mmc_from_priv (struct alcor_sdmmc_host*) ;

__attribute__((used)) static void alcor_init_mmc(struct alcor_sdmmc_host *host)
{
 struct mmc_host *mmc = mmc_from_priv(host);

 mmc->f_min = AU6601_MIN_CLOCK;
 mmc->f_max = AU6601_MAX_CLOCK;
 mmc->ocr_avail = MMC_VDD_33_34;
 mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED
  | MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 | MMC_CAP_UHS_SDR50
  | MMC_CAP_UHS_SDR104 | MMC_CAP_UHS_DDR50;
 mmc->caps2 = MMC_CAP2_NO_SDIO;
 mmc->ops = &alcor_sdc_ops;
 mmc->max_segs = AU6601_MAX_DMA_SEGMENTS;
 mmc->max_seg_size = AU6601_MAX_DMA_BLOCK_SIZE;
 mmc->max_blk_count = 240;
 mmc->max_req_size = mmc->max_blk_count * mmc->max_blk_size;
 dma_set_max_seg_size(host->dev, mmc->max_seg_size);
}
