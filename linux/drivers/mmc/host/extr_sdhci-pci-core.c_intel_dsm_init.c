
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct intel_host {int d3_retune; int dsm_fns; int drv_strength; } ;
struct device {int dummy; } ;


 int INTEL_DSM_D3_RETUNE ;
 int INTEL_DSM_DRV_STRENGTH ;
 int INTEL_DSM_FNS ;
 int __intel_dsm (struct intel_host*,struct device*,int ,int*) ;
 int intel_dsm (struct intel_host*,struct device*,int ,int *) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void intel_dsm_init(struct intel_host *intel_host, struct device *dev,
      struct mmc_host *mmc)
{
 int err;
 u32 val;

 intel_host->d3_retune = 1;

 err = __intel_dsm(intel_host, dev, INTEL_DSM_FNS, &intel_host->dsm_fns);
 if (err) {
  pr_debug("%s: DSM not supported, error %d\n",
    mmc_hostname(mmc), err);
  return;
 }

 pr_debug("%s: DSM function mask %#x\n",
   mmc_hostname(mmc), intel_host->dsm_fns);

 err = intel_dsm(intel_host, dev, INTEL_DSM_DRV_STRENGTH, &val);
 intel_host->drv_strength = err ? 0 : val;

 err = intel_dsm(intel_host, dev, INTEL_DSM_D3_RETUNE, &val);
 intel_host->d3_retune = err ? 1 : !!val;
}
