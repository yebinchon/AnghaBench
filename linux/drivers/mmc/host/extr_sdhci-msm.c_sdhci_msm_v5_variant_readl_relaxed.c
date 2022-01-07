
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 sdhci_msm_v5_variant_readl_relaxed(struct sdhci_host *host,
  u32 offset)
{
 return readl_relaxed(host->ioaddr + offset);
}
