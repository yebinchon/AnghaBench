
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 unsigned int SDHCI_MSM_MIN_CLOCK ;

__attribute__((used)) static unsigned int sdhci_msm_get_min_clock(struct sdhci_host *host)
{
 return SDHCI_MSM_MIN_CLOCK;
}
