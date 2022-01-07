
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_msm_host {int pwr_irq_wait; } ;


 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline void sdhci_msm_init_pwr_irq_wait(struct sdhci_msm_host *msm_host)
{
 init_waitqueue_head(&msm_host->pwr_irq_wait);
}
