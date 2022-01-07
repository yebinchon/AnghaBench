
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int enhanced_strobe; scalar_t__ drv_type; int timing; int bus_width; int bus_mode; int chip_select; } ;
struct mmc_host {int caps2; TYPE_3__ ios; TYPE_2__* ops; TYPE_1__* cqe_ops; scalar_t__ cqe_on; } ;
struct TYPE_5__ {int (* hs400_enhanced_strobe ) (struct mmc_host*,TYPE_3__*) ;} ;
struct TYPE_4__ {int (* cqe_off ) (struct mmc_host*) ;} ;


 int MMC_BUSMODE_PUSHPULL ;
 int MMC_BUS_WIDTH_1 ;
 int MMC_CAP2_HS400_ES ;
 int MMC_CS_DONTCARE ;
 int MMC_CS_HIGH ;
 int MMC_TIMING_LEGACY ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_retune_disable (struct mmc_host*) ;
 int mmc_set_ios (struct mmc_host*) ;
 int stub1 (struct mmc_host*) ;
 int stub2 (struct mmc_host*,TYPE_3__*) ;

void mmc_set_initial_state(struct mmc_host *host)
{
 if (host->cqe_on)
  host->cqe_ops->cqe_off(host);

 mmc_retune_disable(host);

 if (mmc_host_is_spi(host))
  host->ios.chip_select = MMC_CS_HIGH;
 else
  host->ios.chip_select = MMC_CS_DONTCARE;
 host->ios.bus_mode = MMC_BUSMODE_PUSHPULL;
 host->ios.bus_width = MMC_BUS_WIDTH_1;
 host->ios.timing = MMC_TIMING_LEGACY;
 host->ios.drv_type = 0;
 host->ios.enhanced_strobe = 0;





 if ((host->caps2 & MMC_CAP2_HS400_ES) &&
      host->ops->hs400_enhanced_strobe)
  host->ops->hs400_enhanced_strobe(host, &host->ios);

 mmc_set_ios(host);
}
