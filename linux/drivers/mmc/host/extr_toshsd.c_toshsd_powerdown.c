
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshsd_host {int pdev; scalar_t__ ioaddr; } ;


 scalar_t__ SDIO_BASE ;
 scalar_t__ SDIO_CLOCKNWAITCTRL ;
 scalar_t__ SD_CARDCLOCKCTRL ;
 scalar_t__ SD_INTMASKCARD ;
 int SD_PCICFG_CLKSTOP ;
 int SD_PCICFG_POWER1 ;
 int SD_PCICFG_PWR1_OFF ;
 int iowrite16 (int,scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int pci_write_config_byte (int ,int ,int ) ;

__attribute__((used)) static void toshsd_powerdown(struct toshsd_host *host)
{

 iowrite32(0xffffffff, host->ioaddr + SD_INTMASKCARD);

 iowrite16(0x000, host->ioaddr + SDIO_BASE + SDIO_CLOCKNWAITCTRL);
 iowrite16(0, host->ioaddr + SD_CARDCLOCKCTRL);

 pci_write_config_byte(host->pdev, SD_PCICFG_POWER1, SD_PCICFG_PWR1_OFF);

 pci_write_config_byte(host->pdev, SD_PCICFG_CLKSTOP, 0);
}
