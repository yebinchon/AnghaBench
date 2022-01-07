
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rmon; } ;
struct stmmac_priv {int dev; int mmc; int mmcaddr; TYPE_1__ dma_cap; } ;
struct stmmac_counters {int dummy; } ;


 unsigned int MMC_CNTRL_COUNTER_RESET ;
 unsigned int MMC_CNTRL_FULL_HALF_PRESET ;
 unsigned int MMC_CNTRL_PRESET ;
 unsigned int MMC_CNTRL_RESET_ON_READ ;
 int memset (int *,int ,int) ;
 int netdev_info (int ,char*) ;
 int stmmac_mmc_ctrl (struct stmmac_priv*,int ,unsigned int) ;
 int stmmac_mmc_intr_all_mask (struct stmmac_priv*,int ) ;

__attribute__((used)) static void stmmac_mmc_setup(struct stmmac_priv *priv)
{
 unsigned int mode = MMC_CNTRL_RESET_ON_READ | MMC_CNTRL_COUNTER_RESET |
       MMC_CNTRL_PRESET | MMC_CNTRL_FULL_HALF_PRESET;

 stmmac_mmc_intr_all_mask(priv, priv->mmcaddr);

 if (priv->dma_cap.rmon) {
  stmmac_mmc_ctrl(priv, priv->mmcaddr, mode);
  memset(&priv->mmc, 0, sizeof(struct stmmac_counters));
 } else
  netdev_info(priv->dev, "No MAC Management Counters available\n");
}
