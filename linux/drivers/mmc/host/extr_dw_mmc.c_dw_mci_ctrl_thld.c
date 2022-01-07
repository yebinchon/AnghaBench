
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct mmc_data {unsigned int blksz; int flags; } ;
struct dw_mci {scalar_t__ verid; scalar_t__ timing; int data_shift; unsigned int fifo_depth; } ;


 int CDTHRCTL ;
 scalar_t__ DW_MMC_240A ;
 scalar_t__ DW_MMC_280A ;
 int MMC_DATA_WRITE ;
 scalar_t__ MMC_TIMING_MMC_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_SDR104 ;
 int SDMMC_CARD_RD_THR_EN ;
 int SDMMC_CARD_WR_THR_EN ;
 int SDMMC_SET_THLD (unsigned int,int ) ;
 int mci_writel (struct dw_mci*,int ,int ) ;

__attribute__((used)) static void dw_mci_ctrl_thld(struct dw_mci *host, struct mmc_data *data)
{
 unsigned int blksz = data->blksz;
 u32 blksz_depth, fifo_depth;
 u16 thld_size;
 u8 enable;





 if (host->verid < DW_MMC_240A ||
  (host->verid < DW_MMC_280A && data->flags & MMC_DATA_WRITE))
  return;





 if (data->flags & MMC_DATA_WRITE &&
  host->timing != MMC_TIMING_MMC_HS400)
  goto disable;

 if (data->flags & MMC_DATA_WRITE)
  enable = SDMMC_CARD_WR_THR_EN;
 else
  enable = SDMMC_CARD_RD_THR_EN;

 if (host->timing != MMC_TIMING_MMC_HS200 &&
     host->timing != MMC_TIMING_UHS_SDR104 &&
     host->timing != MMC_TIMING_MMC_HS400)
  goto disable;

 blksz_depth = blksz / (1 << host->data_shift);
 fifo_depth = host->fifo_depth;

 if (blksz_depth > fifo_depth)
  goto disable;






 thld_size = blksz;
 mci_writel(host, CDTHRCTL, SDMMC_SET_THLD(thld_size, enable));
 return;

disable:
 mci_writel(host, CDTHRCTL, 0);
}
