
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void sdhci_msm_v5_variant_writel_relaxed(u32 val,
  struct sdhci_host *host, u32 offset)
{
 writel_relaxed(val, host->ioaddr + offset);
}
