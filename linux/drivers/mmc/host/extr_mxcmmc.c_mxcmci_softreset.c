
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int mmc; } ;


 int MMC_REG_RES_TO ;
 int MMC_REG_STR_STP_CLK ;
 int STR_STP_CLK_RESET ;
 int STR_STP_CLK_START_CLK ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int mxcmci_writew (struct mxcmci_host*,int,int ) ;

__attribute__((used)) static void mxcmci_softreset(struct mxcmci_host *host)
{
 int i;

 dev_dbg(mmc_dev(host->mmc), "mxcmci_softreset\n");


 mxcmci_writew(host, STR_STP_CLK_RESET, MMC_REG_STR_STP_CLK);
 mxcmci_writew(host, STR_STP_CLK_RESET | STR_STP_CLK_START_CLK,
   MMC_REG_STR_STP_CLK);

 for (i = 0; i < 8; i++)
  mxcmci_writew(host, STR_STP_CLK_START_CLK, MMC_REG_STR_STP_CLK);

 mxcmci_writew(host, 0xff, MMC_REG_RES_TO);
}
