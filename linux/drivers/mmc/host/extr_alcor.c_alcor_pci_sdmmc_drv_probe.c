
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct alcor_pci_priv* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int timeout_work; int cmd_mutex; struct alcor_pci_priv* alcor_pci; int cur_power_mode; TYPE_1__* dev; } ;
struct alcor_pci_priv {int irq; } ;


 int AU6601_MS_INT_ENABLE ;
 int AU6601_REG_INT_ENABLE ;
 int DRV_NAME_ALCOR_PCI_SDMMC ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int MMC_POWER_UNDEFINED ;
 int alcor_hw_init (struct alcor_sdmmc_host*) ;
 int alcor_init_mmc (struct alcor_sdmmc_host*) ;
 int alcor_irq ;
 int alcor_irq_thread ;
 int alcor_timeout_timer ;
 int alcor_write32 (struct alcor_pci_priv*,int ,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct alcor_sdmmc_host*) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int ,int ,int ,int ,struct alcor_sdmmc_host*) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_1__*) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int alcor_pci_sdmmc_drv_probe(struct platform_device *pdev)
{
 struct alcor_pci_priv *priv = pdev->dev.platform_data;
 struct mmc_host *mmc;
 struct alcor_sdmmc_host *host;
 int ret;

 mmc = mmc_alloc_host(sizeof(*host), &pdev->dev);
 if (!mmc) {
  dev_err(&pdev->dev, "Can't allocate MMC\n");
  return -ENOMEM;
 }

 host = mmc_priv(mmc);
 host->dev = &pdev->dev;
 host->cur_power_mode = MMC_POWER_UNDEFINED;
 host->alcor_pci = priv;


 alcor_write32(priv, 0, AU6601_REG_INT_ENABLE);
 alcor_write32(priv, 0, AU6601_MS_INT_ENABLE);

 ret = devm_request_threaded_irq(&pdev->dev, priv->irq,
   alcor_irq, alcor_irq_thread, IRQF_SHARED,
   DRV_NAME_ALCOR_PCI_SDMMC, host);

 if (ret) {
  dev_err(&pdev->dev, "Failed to get irq for data line\n");
  return ret;
 }

 mutex_init(&host->cmd_mutex);
 INIT_DELAYED_WORK(&host->timeout_work, alcor_timeout_timer);

 alcor_init_mmc(host);
 alcor_hw_init(host);

 dev_set_drvdata(&pdev->dev, host);
 mmc_add_host(mmc);
 return 0;
}
