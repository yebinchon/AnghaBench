
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_HW_RESET_CARD ;
 scalar_t__ SDHCI_SOFTWARE_RESET ;
 int readb_relaxed (scalar_t__) ;
 int usleep_range (int,int) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sdhci_sprd_hw_reset(struct sdhci_host *host)
{
 int val;







 val = readb_relaxed(host->ioaddr + SDHCI_SOFTWARE_RESET);
 val &= ~SDHCI_HW_RESET_CARD;
 writeb_relaxed(val, host->ioaddr + SDHCI_SOFTWARE_RESET);

 usleep_range(10, 20);

 val |= SDHCI_HW_RESET_CARD;
 writeb_relaxed(val, host->ioaddr + SDHCI_SOFTWARE_RESET);
 usleep_range(300, 500);
}
