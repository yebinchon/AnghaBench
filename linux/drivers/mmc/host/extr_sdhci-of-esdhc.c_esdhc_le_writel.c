
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int esdhc_writel_fixup (struct sdhci_host*,int,int ,int ) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void esdhc_le_writel(struct sdhci_host *host, u32 val, int reg)
{
 u32 value;

 value = esdhc_writel_fixup(host, reg, val, 0);
 iowrite32(value, host->ioaddr + reg);
}
