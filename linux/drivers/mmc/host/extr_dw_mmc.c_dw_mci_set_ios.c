
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mmc_ios {int bus_width; scalar_t__ timing; scalar_t__ clock; int power_mode; int vdd; } ;
struct TYPE_6__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct dw_mci_slot {int id; scalar_t__ clock; TYPE_2__* host; int flags; int ctype; } ;
struct dw_mci_drv_data {int (* set_ios ) (TYPE_2__*,struct mmc_ios*) ;} ;
struct TYPE_7__ {scalar_t__ timing; int vqmmc_enabled; scalar_t__ state; int dev; struct dw_mci_drv_data* drv_data; } ;


 int DW_MMC_CARD_NEED_INIT ;
 int IS_ERR (int ) ;





 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int PWREN ;
 int SDMMC_CTRL_ALL_RESET_FLAGS ;
 int SDMMC_CTYPE_1BIT ;
 int SDMMC_CTYPE_4BIT ;
 int SDMMC_CTYPE_8BIT ;
 scalar_t__ STATE_IDLE ;
 scalar_t__ STATE_WAITING_CMD11_DONE ;
 int UHS_REG ;
 int dev_err (int ,char*) ;
 int dw_mci_ctrl_reset (TYPE_2__*,int ) ;
 int dw_mci_setup_bus (struct dw_mci_slot*,int) ;
 int mci_readl (TYPE_2__*,int ) ;
 int mci_writel (TYPE_2__*,int ,int) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*,struct mmc_ios*) ;

__attribute__((used)) static void dw_mci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 const struct dw_mci_drv_data *drv_data = slot->host->drv_data;
 u32 regs;
 int ret;

 switch (ios->bus_width) {
 case 132:
  slot->ctype = SDMMC_CTYPE_4BIT;
  break;
 case 131:
  slot->ctype = SDMMC_CTYPE_8BIT;
  break;
 default:

  slot->ctype = SDMMC_CTYPE_1BIT;
 }

 regs = mci_readl(slot->host, UHS_REG);


 if (ios->timing == MMC_TIMING_MMC_DDR52 ||
     ios->timing == MMC_TIMING_UHS_DDR50 ||
     ios->timing == MMC_TIMING_MMC_HS400)
  regs |= ((0x1 << slot->id) << 16);
 else
  regs &= ~((0x1 << slot->id) << 16);

 mci_writel(slot->host, UHS_REG, regs);
 slot->host->timing = ios->timing;





 slot->clock = ios->clock;

 if (drv_data && drv_data->set_ios)
  drv_data->set_ios(slot->host, ios);

 switch (ios->power_mode) {
 case 128:
  if (!IS_ERR(mmc->supply.vmmc)) {
   ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,
     ios->vdd);
   if (ret) {
    dev_err(slot->host->dev,
     "failed to enable vmmc regulator\n");

    return;
   }
  }
  set_bit(DW_MMC_CARD_NEED_INIT, &slot->flags);
  regs = mci_readl(slot->host, PWREN);
  regs |= (1 << slot->id);
  mci_writel(slot->host, PWREN, regs);
  break;
 case 129:
  if (!slot->host->vqmmc_enabled) {
   if (!IS_ERR(mmc->supply.vqmmc)) {
    ret = regulator_enable(mmc->supply.vqmmc);
    if (ret < 0)
     dev_err(slot->host->dev,
      "failed to enable vqmmc\n");
    else
     slot->host->vqmmc_enabled = 1;

   } else {

    slot->host->vqmmc_enabled = 1;
   }


   dw_mci_ctrl_reset(slot->host,
       SDMMC_CTRL_ALL_RESET_FLAGS);
  }


  dw_mci_setup_bus(slot, 0);

  break;
 case 130:

  dw_mci_setup_bus(slot, 0);

  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

  if (!IS_ERR(mmc->supply.vqmmc) && slot->host->vqmmc_enabled)
   regulator_disable(mmc->supply.vqmmc);
  slot->host->vqmmc_enabled = 0;

  regs = mci_readl(slot->host, PWREN);
  regs &= ~(1 << slot->id);
  mci_writel(slot->host, PWREN, regs);
  break;
 default:
  break;
 }

 if (slot->host->state == STATE_WAITING_CMD11_DONE && ios->clock != 0)
  slot->host->state = STATE_IDLE;
}
