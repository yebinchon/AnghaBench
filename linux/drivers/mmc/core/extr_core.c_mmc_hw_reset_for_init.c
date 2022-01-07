
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* hw_reset ) (struct mmc_host*) ;} ;


 int MMC_CAP_HW_RESET ;
 int mmc_pwrseq_reset (struct mmc_host*) ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static void mmc_hw_reset_for_init(struct mmc_host *host)
{
 mmc_pwrseq_reset(host);

 if (!(host->caps & MMC_CAP_HW_RESET) || !host->ops->hw_reset)
  return;
 host->ops->hw_reset(host);
}
