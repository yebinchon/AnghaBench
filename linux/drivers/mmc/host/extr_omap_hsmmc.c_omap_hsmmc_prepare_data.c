
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int mmc; scalar_t__ use_dma; int base; int * data; } ;
struct mmc_request {TYPE_1__* cmd; int * data; } ;
struct TYPE_2__ {int flags; unsigned long long busy_timeout; } ;


 int BLK ;
 int MMC_RSP_BUSY ;
 unsigned long long NSEC_PER_MSEC ;
 int OMAP_HSMMC_WRITE (int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int omap_hsmmc_setup_dma_transfer (struct omap_hsmmc_host*,struct mmc_request*) ;
 int set_data_timeout (struct omap_hsmmc_host*,unsigned long long,int ) ;

__attribute__((used)) static int
omap_hsmmc_prepare_data(struct omap_hsmmc_host *host, struct mmc_request *req)
{
 int ret;
 unsigned long long timeout;

 host->data = req->data;

 if (req->data == ((void*)0)) {
  OMAP_HSMMC_WRITE(host->base, BLK, 0);
  if (req->cmd->flags & MMC_RSP_BUSY) {
   timeout = req->cmd->busy_timeout * NSEC_PER_MSEC;





   if (!timeout)
    timeout = 100000000U;

   set_data_timeout(host, timeout, 0);
  }
  return 0;
 }

 if (host->use_dma) {
  ret = omap_hsmmc_setup_dma_transfer(host, req);
  if (ret != 0) {
   dev_err(mmc_dev(host->mmc), "MMC start dma failure\n");
   return ret;
  }
 }
 return 0;
}
