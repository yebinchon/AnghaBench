
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct via_crdr_mmc_host {int power; int lock; scalar_t__ pcictrl_mmiobase; } ;


 int MMC_VDD_165_195 ;
 scalar_t__ VIA_CRDR_PCICLKGATT ;
 int VIA_CRDR_PCICLKGATT_3V3 ;
 int VIA_CRDR_PCICLKGATT_PAD_PWRON ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_pwron_sleep (struct via_crdr_mmc_host*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void via_sdc_set_power(struct via_crdr_mmc_host *host,
         unsigned short power, unsigned int on)
{
 unsigned long flags;
 u8 gatt;

 spin_lock_irqsave(&host->lock, flags);

 host->power = (1 << power);

 gatt = readb(host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);
 if (host->power == MMC_VDD_165_195)
  gatt &= ~VIA_CRDR_PCICLKGATT_3V3;
 else
  gatt |= VIA_CRDR_PCICLKGATT_3V3;
 if (on)
  gatt |= VIA_CRDR_PCICLKGATT_PAD_PWRON;
 else
  gatt &= ~VIA_CRDR_PCICLKGATT_PAD_PWRON;
 writeb(gatt, host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);

 spin_unlock_irqrestore(&host->lock, flags);

 via_pwron_sleep(host);
}
