
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct via_crdr_mmc_host {scalar_t__ power; int lock; scalar_t__ pcictrl_mmiobase; } ;


 scalar_t__ MMC_VDD_165_195 ;
 scalar_t__ VIA_CRDR_PCICLKGATT ;
 int VIA_CRDR_PCICLKGATT_3V3 ;
 int VIA_CRDR_PCICLKGATT_PAD_PWRON ;
 int VIA_CRDR_PCICLKGATT_SFTRST ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_pwron_sleep (struct via_crdr_mmc_host*) ;
 int via_restore_pcictrlreg (struct via_crdr_mmc_host*) ;
 int via_restore_sdcreg (struct via_crdr_mmc_host*) ;
 int via_save_pcictrlreg (struct via_crdr_mmc_host*) ;
 int via_save_sdcreg (struct via_crdr_mmc_host*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void via_reset_pcictrl(struct via_crdr_mmc_host *host)
{
 unsigned long flags;
 u8 gatt;

 spin_lock_irqsave(&host->lock, flags);

 via_save_pcictrlreg(host);
 via_save_sdcreg(host);

 spin_unlock_irqrestore(&host->lock, flags);

 gatt = VIA_CRDR_PCICLKGATT_PAD_PWRON;
 if (host->power == MMC_VDD_165_195)
  gatt &= VIA_CRDR_PCICLKGATT_3V3;
 else
  gatt |= VIA_CRDR_PCICLKGATT_3V3;
 writeb(gatt, host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);
 via_pwron_sleep(host);
 gatt |= VIA_CRDR_PCICLKGATT_SFTRST;
 writeb(gatt, host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);
 msleep(3);

 spin_lock_irqsave(&host->lock, flags);

 via_restore_pcictrlreg(host);
 via_restore_sdcreg(host);

 spin_unlock_irqrestore(&host->lock, flags);
}
