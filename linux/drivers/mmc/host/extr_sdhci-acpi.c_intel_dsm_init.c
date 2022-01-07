
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct intel_host {int dsm_fns; int hs_caps; } ;
struct device {int dummy; } ;


 int INTEL_DSM_FNS ;
 int INTEL_DSM_HS_CAPS ;
 int __intel_dsm (struct intel_host*,struct device*,int ,int*) ;
 int intel_dsm (struct intel_host*,struct device*,int ,int *) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void intel_dsm_init(struct intel_host *intel_host, struct device *dev,
      struct mmc_host *mmc)
{
 int err;

 intel_host->hs_caps = ~0;

 err = __intel_dsm(intel_host, dev, INTEL_DSM_FNS, &intel_host->dsm_fns);
 if (err) {
  pr_debug("%s: DSM not supported, error %d\n",
    mmc_hostname(mmc), err);
  return;
 }

 pr_debug("%s: DSM function mask %#x\n",
   mmc_hostname(mmc), intel_host->dsm_fns);

 intel_dsm(intel_host, dev, INTEL_DSM_HS_CAPS, &intel_host->hs_caps);
}
