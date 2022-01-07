
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {int dma_on; TYPE_2__* mmc; struct mmc_data* data; struct tmio_mmc_data* pdata; } ;
struct tmio_mmc_data {int flags; } ;
struct mmc_data {int blksz; int blocks; } ;
struct TYPE_3__ {scalar_t__ bus_width; } ;
struct TYPE_4__ {scalar_t__ max_blk_count; TYPE_1__ ios; } ;


 int CTL_SD_XFER_LEN ;
 int CTL_XFER_BLK_COUNT ;
 int EINVAL ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 scalar_t__ SZ_64K ;
 int TMIO_MMC_BLKSZ_2BYTES ;
 int mmc_hostname (TYPE_2__*) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int ,int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_ctrl_write32 (struct tmio_mmc_host*,int ,int) ;
 int tmio_mmc_init_sg (struct tmio_mmc_host*,struct mmc_data*) ;
 int tmio_mmc_start_dma (struct tmio_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static int tmio_mmc_start_data(struct tmio_mmc_host *host,
          struct mmc_data *data)
{
 struct tmio_mmc_data *pdata = host->pdata;

 pr_debug("setup data transfer: blocksize %08x  nr_blocks %d\n",
   data->blksz, data->blocks);


 if (host->mmc->ios.bus_width == MMC_BUS_WIDTH_4 ||
     host->mmc->ios.bus_width == MMC_BUS_WIDTH_8) {
  int blksz_2bytes = pdata->flags & TMIO_MMC_BLKSZ_2BYTES;

  if (data->blksz < 2 || (data->blksz < 4 && !blksz_2bytes)) {
   pr_err("%s: %d byte block unsupported in 4/8 bit mode\n",
          mmc_hostname(host->mmc), data->blksz);
   return -EINVAL;
  }
 }

 tmio_mmc_init_sg(host, data);
 host->data = data;
 host->dma_on = 0;


 sd_ctrl_write16(host, CTL_SD_XFER_LEN, data->blksz);
 if (host->mmc->max_blk_count >= SZ_64K)
  sd_ctrl_write32(host, CTL_XFER_BLK_COUNT, data->blocks);
 else
  sd_ctrl_write16(host, CTL_XFER_BLK_COUNT, data->blocks);

 tmio_mmc_start_dma(host, data);

 return 0;
}
