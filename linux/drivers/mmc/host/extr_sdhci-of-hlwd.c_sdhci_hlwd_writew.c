
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_HLWD_WRITE_DELAY ;
 int sdhci_be32bs_writew (struct sdhci_host*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void sdhci_hlwd_writew(struct sdhci_host *host, u16 val, int reg)
{
 sdhci_be32bs_writew(host, val, reg);
 udelay(SDHCI_HLWD_WRITE_DELAY);
}
