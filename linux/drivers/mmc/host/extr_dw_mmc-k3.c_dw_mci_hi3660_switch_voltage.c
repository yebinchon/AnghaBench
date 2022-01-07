
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {scalar_t__ signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct k3_priv {scalar_t__ ctrl_id; int reg; } ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int dev; struct k3_priv* priv; } ;


 scalar_t__ DWMMC_SDIO_ID ;
 int IS_ERR (int ) ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_180 ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ;
 int dev_err (int ,char*,int) ;
 int dw_mci_set_sel18 (struct dw_mci*,int) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static int dw_mci_hi3660_switch_voltage(struct mmc_host *mmc,
     struct mmc_ios *ios)
{
 int ret = 0;
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct k3_priv *priv;
 struct dw_mci *host;

 host = slot->host;
 priv = host->priv;

 if (!priv || !priv->reg)
  return 0;

 if (priv->ctrl_id == DWMMC_SDIO_ID)
  return 0;

 if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330)
  ret = dw_mci_set_sel18(host, 0);
 else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180)
  ret = dw_mci_set_sel18(host, 1);
 if (ret)
  return ret;

 if (!IS_ERR(mmc->supply.vqmmc)) {
  ret = mmc_regulator_set_vqmmc(mmc, ios);
  if (ret) {
   dev_err(host->dev, "Regulator set error %d\n", ret);
   return ret;
  }
 }

 return 0;
}
