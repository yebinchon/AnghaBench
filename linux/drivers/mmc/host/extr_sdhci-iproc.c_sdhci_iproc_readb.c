
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int REG_OFFSET_IN_BITS (int) ;
 int sdhci_iproc_readl (struct sdhci_host*,int) ;

__attribute__((used)) static u8 sdhci_iproc_readb(struct sdhci_host *host, int reg)
{
 u32 val = sdhci_iproc_readl(host, (reg & ~3));
 u8 byte = val >> REG_OFFSET_IN_BITS(reg) & 0xff;
 return byte;
}
