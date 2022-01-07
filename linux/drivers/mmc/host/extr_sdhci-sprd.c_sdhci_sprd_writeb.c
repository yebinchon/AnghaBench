
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_HW_RESET_CARD ;
 int SDHCI_SOFTWARE_RESET ;
 int readb_relaxed (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void sdhci_sprd_writeb(struct sdhci_host *host, u8 val, int reg)
{
 if (unlikely(reg == SDHCI_SOFTWARE_RESET)) {
  if (readb_relaxed(host->ioaddr + reg) & SDHCI_HW_RESET_CARD)
   val |= SDHCI_HW_RESET_CARD;
 }

 writeb_relaxed(val, host->ioaddr + reg);
}
