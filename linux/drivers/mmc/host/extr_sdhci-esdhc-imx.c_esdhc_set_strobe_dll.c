
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; scalar_t__ ioaddr; } ;


 scalar_t__ ESDHC_STROBE_DLL_CTRL ;
 int ESDHC_STROBE_DLL_CTRL_ENABLE ;
 int ESDHC_STROBE_DLL_CTRL_RESET ;
 int ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT ;
 int ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT ;
 scalar_t__ ESDHC_STROBE_DLL_STATUS ;
 int ESDHC_STROBE_DLL_STS_REF_LOCK ;
 int ESDHC_STROBE_DLL_STS_SLV_LOCK ;
 scalar_t__ ESDHC_VENDOR_SPEC ;
 int ESDHC_VENDOR_SPEC_FRC_SDCLK_ON ;
 int dev_warn (int ,char*) ;
 int mmc_dev (int ) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void esdhc_set_strobe_dll(struct sdhci_host *host)
{
 u32 v;


 writel(readl(host->ioaddr + ESDHC_VENDOR_SPEC) &
  ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
  host->ioaddr + ESDHC_VENDOR_SPEC);


 writel(ESDHC_STROBE_DLL_CTRL_RESET,
  host->ioaddr + ESDHC_STROBE_DLL_CTRL);

 writel(0, host->ioaddr + ESDHC_STROBE_DLL_CTRL);





 v = ESDHC_STROBE_DLL_CTRL_ENABLE |
  ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT |
  (7 << ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT);
 writel(v, host->ioaddr + ESDHC_STROBE_DLL_CTRL);

 udelay(5);
 v = readl(host->ioaddr + ESDHC_STROBE_DLL_STATUS);
 if (!(v & ESDHC_STROBE_DLL_STS_REF_LOCK))
  dev_warn(mmc_dev(host->mmc),
  "warning! HS400 strobe DLL status REF not lock!\n");
 if (!(v & ESDHC_STROBE_DLL_STS_SLV_LOCK))
  dev_warn(mmc_dev(host->mmc),
  "warning! HS400 strobe DLL status SLV not lock!\n");
}
