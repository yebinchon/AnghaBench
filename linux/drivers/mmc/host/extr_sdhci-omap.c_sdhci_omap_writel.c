
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_omap_host {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_omap_writel(struct sdhci_omap_host *host,
         unsigned int offset, u32 data)
{
 writel(data, host->base + offset);
}
