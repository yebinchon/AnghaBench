
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_3__* mmc; TYPE_2__* pdata; } ;
struct renesas_sdhi {int dummy; } ;
struct TYPE_4__ {scalar_t__ timing; } ;
struct TYPE_6__ {TYPE_1__ ios; } ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ MMC_TIMING_MMC_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_SDR104 ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN ;
 int SH_MOBILE_SDHI_SCC_RVSREQ ;
 int SH_MOBILE_SDHI_SCC_RVSREQ_RVSERR ;
 int TMIO_MMC_HAVE_4TAP_HS400 ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 scalar_t__ mmc_doing_retune (TYPE_3__*) ;
 int sd_scc_read32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,int ) ;

__attribute__((used)) static bool renesas_sdhi_check_scc_error(struct tmio_mmc_host *host)
{
 struct renesas_sdhi *priv = host_to_priv(host);
 bool use_4tap = host->pdata->flags & TMIO_MMC_HAVE_4TAP_HS400;





 if (!(host->mmc->ios.timing == MMC_TIMING_UHS_SDR104) &&
     !(host->mmc->ios.timing == MMC_TIMING_MMC_HS200) &&
     !(host->mmc->ios.timing == MMC_TIMING_MMC_HS400 && !use_4tap))
  return 0;

 if (mmc_doing_retune(host->mmc))
  return 0;


 if (sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL) &
     SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN &&
     sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_RVSREQ) &
     SH_MOBILE_SDHI_SCC_RVSREQ_RVSERR) {

  sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_RVSREQ, 0);
  return 1;
 }

 return 0;
}
