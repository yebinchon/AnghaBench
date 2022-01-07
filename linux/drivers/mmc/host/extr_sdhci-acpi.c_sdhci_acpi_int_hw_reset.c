
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_POWER_CONTROL ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int,int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_acpi_int_hw_reset(struct sdhci_host *host)
{
 u8 reg;

 reg = sdhci_readb(host, SDHCI_POWER_CONTROL);
 reg |= 0x10;
 sdhci_writeb(host, reg, SDHCI_POWER_CONTROL);

 udelay(9);
 reg &= ~0x10;
 sdhci_writeb(host, reg, SDHCI_POWER_CONTROL);

 usleep_range(300, 1000);
}
