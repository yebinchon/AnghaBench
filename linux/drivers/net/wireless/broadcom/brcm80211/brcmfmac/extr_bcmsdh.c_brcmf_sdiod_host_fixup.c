
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int parent; } ;


 int MMC_CAP_NONREMOVABLE ;
 int pm_runtime_forbid (int ) ;

__attribute__((used)) static void brcmf_sdiod_host_fixup(struct mmc_host *host)
{

 pm_runtime_forbid(host->parent);

 host->caps |= MMC_CAP_NONREMOVABLE;
}
