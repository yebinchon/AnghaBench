
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int clk_reg_add; int pwr_reg_add; } ;
struct mmc_host {int caps; } ;
struct device_node {int dummy; } ;


 int MCI_STM32_CLK_NEGEDGE ;
 int MCI_STM32_CLK_SELCKIN ;
 int MCI_STM32_DIRPOL ;
 int MCI_ST_CMDDIREN ;
 int MCI_ST_DATA0DIREN ;
 int MCI_ST_DATA2DIREN ;
 int MCI_ST_DATA31DIREN ;
 int MCI_ST_DATA74DIREN ;
 int MCI_ST_FBCLKEN ;
 int MMC_CAP_MMC_HIGHSPEED ;
 int MMC_CAP_SD_HIGHSPEED ;
 int mmc_of_parse (struct mmc_host*) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int mmci_of_parse(struct device_node *np, struct mmc_host *mmc)
{
 struct mmci_host *host = mmc_priv(mmc);
 int ret = mmc_of_parse(mmc);

 if (ret)
  return ret;

 if (of_get_property(np, "st,sig-dir-dat0", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_DATA0DIREN;
 if (of_get_property(np, "st,sig-dir-dat2", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_DATA2DIREN;
 if (of_get_property(np, "st,sig-dir-dat31", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_DATA31DIREN;
 if (of_get_property(np, "st,sig-dir-dat74", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_DATA74DIREN;
 if (of_get_property(np, "st,sig-dir-cmd", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_CMDDIREN;
 if (of_get_property(np, "st,sig-pin-fbclk", ((void*)0)))
  host->pwr_reg_add |= MCI_ST_FBCLKEN;
 if (of_get_property(np, "st,sig-dir", ((void*)0)))
  host->pwr_reg_add |= MCI_STM32_DIRPOL;
 if (of_get_property(np, "st,neg-edge", ((void*)0)))
  host->clk_reg_add |= MCI_STM32_CLK_NEGEDGE;
 if (of_get_property(np, "st,use-ckin", ((void*)0)))
  host->clk_reg_add |= MCI_STM32_CLK_SELCKIN;

 if (of_get_property(np, "mmc-cap-mmc-highspeed", ((void*)0)))
  mmc->caps |= MMC_CAP_MMC_HIGHSPEED;
 if (of_get_property(np, "mmc-cap-sd-highspeed", ((void*)0)))
  mmc->caps |= MMC_CAP_SD_HIGHSPEED;

 return 0;
}
