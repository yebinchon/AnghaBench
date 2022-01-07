
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_msm_host {int pwr_irq_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static inline void sdhci_msm_complete_pwr_irq_wait(
  struct sdhci_msm_host *msm_host)
{
 wake_up(&msm_host->pwr_irq_wait);
}
