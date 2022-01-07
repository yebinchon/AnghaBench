
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {scalar_t__ base; } ;
struct mmc_data {int dummy; } ;


 scalar_t__ MMCI_STM32_IDMACTRLR ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sdmmc_idma_finalize(struct mmci_host *host, struct mmc_data *data)
{
 writel_relaxed(0, host->base + MMCI_STM32_IDMACTRLR);
}
