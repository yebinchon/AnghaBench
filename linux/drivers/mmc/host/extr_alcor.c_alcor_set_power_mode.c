
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int power_mode; int clock; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int dev; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_ACTIVE_CTRL ;
 int AU6601_CLK_DELAY ;
 int AU6601_DATA_WRITE ;
 int AU6601_DATA_XFER_CTRL ;
 int AU6601_OPT ;
 int AU6601_OUTPUT_ENABLE ;
 int AU6601_POWER_CONTROL ;
 int AU6601_REG_BUS_CTRL ;
 int AU6601_SD_CARD ;
 int AU6601_TIME_OUT_CTRL ;



 int alcor_set_clock (struct alcor_sdmmc_host*,int ) ;
 int alcor_write8 (struct alcor_pci_priv*,int,int ) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void alcor_set_power_mode(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);
 struct alcor_pci_priv *priv = host->alcor_pci;

 switch (ios->power_mode) {
 case 130:
  alcor_set_clock(host, ios->clock);

  alcor_write8(priv, 0, AU6601_OUTPUT_ENABLE);

  alcor_write8(priv, 0, AU6601_POWER_CONTROL);
  break;
 case 128:
  break;
 case 129:
  alcor_write8(priv, AU6601_SD_CARD,
         AU6601_ACTIVE_CTRL);

  alcor_write8(priv, 0, AU6601_OPT);



  alcor_write8(priv, 0x20, AU6601_CLK_DELAY);

  alcor_write8(priv, 0, AU6601_REG_BUS_CTRL);

  alcor_set_clock(host, ios->clock);

  alcor_write8(priv, AU6601_SD_CARD,
         AU6601_POWER_CONTROL);

  mdelay(20);

  alcor_set_clock(host, ios->clock);


  alcor_write8(priv, AU6601_SD_CARD,
         AU6601_OUTPUT_ENABLE);



  alcor_write8(priv, AU6601_DATA_WRITE,
         AU6601_DATA_XFER_CTRL);

  alcor_write8(priv, 0x7d, AU6601_TIME_OUT_CTRL);
  mdelay(100);
  break;
 default:
  dev_err(host->dev, "Unknown power parameter\n");
 }
}
