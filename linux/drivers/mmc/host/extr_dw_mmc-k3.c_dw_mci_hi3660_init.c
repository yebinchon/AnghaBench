
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mci {int bus_hz; } ;


 int CDTHRCTL ;
 int GENCLK_DIV ;
 int MMC_TIMING_LEGACY ;
 int SDCARD_RD_THRESHOLD ;
 int SDMMC_CARD_RD_THR_EN ;
 int SDMMC_SET_THLD (int ,int ) ;
 int dw_mci_hs_set_timing (struct dw_mci*,int ,int) ;
 int mci_writel (struct dw_mci*,int ,int ) ;

__attribute__((used)) static int dw_mci_hi3660_init(struct dw_mci *host)
{
 mci_writel(host, CDTHRCTL, SDMMC_SET_THLD(SDCARD_RD_THRESHOLD,
      SDMMC_CARD_RD_THR_EN));

 dw_mci_hs_set_timing(host, MMC_TIMING_LEGACY, -1);
 host->bus_hz /= (GENCLK_DIV + 1);

 return 0;
}
