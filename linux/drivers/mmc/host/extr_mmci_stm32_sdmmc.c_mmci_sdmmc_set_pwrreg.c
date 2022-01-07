
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmci_host {unsigned int pwr_reg_add; scalar_t__ base; TYPE_1__* variant; int rst; TYPE_2__* mmc; } ;
struct mmc_ios {scalar_t__ power_mode; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {int start_err; } ;


 int MCI_IRQENABLE ;
 unsigned int MCI_PWR_OFF ;
 unsigned int MCI_PWR_ON ;
 unsigned int MCI_STM32_PWR_CYC ;
 scalar_t__ MMCIMASK0 ;
 scalar_t__ MMC_POWER_OFF ;
 scalar_t__ MMC_POWER_ON ;
 int mdelay (int) ;
 int mmci_write_pwrreg (struct mmci_host*,unsigned int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
{
 struct mmc_ios ios = host->mmc->ios;

 pwr = host->pwr_reg_add;

 if (ios.power_mode == MMC_POWER_OFF) {

  reset_control_assert(host->rst);
  udelay(2);
  reset_control_deassert(host->rst);







  mmci_write_pwrreg(host, MCI_STM32_PWR_CYC | pwr);
 } else if (ios.power_mode == MMC_POWER_ON) {





  writel(MCI_IRQENABLE | host->variant->start_err,
         host->base + MMCIMASK0);






  mmci_write_pwrreg(host, MCI_PWR_OFF | pwr);
  mdelay(1);
  mmci_write_pwrreg(host, MCI_PWR_ON | pwr);
 }
}
