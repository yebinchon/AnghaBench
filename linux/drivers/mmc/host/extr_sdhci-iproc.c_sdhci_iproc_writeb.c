
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int REG_OFFSET_IN_BITS (int) ;
 int sdhci_iproc_readl (struct sdhci_host*,int) ;
 int sdhci_iproc_writel (struct sdhci_host*,int,int) ;

__attribute__((used)) static void sdhci_iproc_writeb(struct sdhci_host *host, u8 val, int reg)
{
 u32 oldval = sdhci_iproc_readl(host, (reg & ~3));
 u32 byte_shift = REG_OFFSET_IN_BITS(reg);
 u32 mask = 0xff << byte_shift;
 u32 newval = (oldval & ~mask) | (val << byte_shift);

 sdhci_iproc_writel(host, newval, reg & ~3);
}
