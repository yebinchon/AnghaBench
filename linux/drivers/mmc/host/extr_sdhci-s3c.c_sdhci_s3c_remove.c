
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_s3c {int clk_io; TYPE_1__* pdata; scalar_t__ ext_cd_irq; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ cd_type; } ;


 scalar_t__ S3C_SDHCI_CD_INTERNAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int free_irq (scalar_t__,struct sdhci_s3c*) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int sdhci_free_host (struct sdhci_host*) ;
 struct sdhci_s3c* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_s3c_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_s3c *sc = sdhci_priv(host);

 if (sc->ext_cd_irq)
  free_irq(sc->ext_cd_irq, sc);





 sdhci_remove_host(host, 1);

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 clk_disable_unprepare(sc->clk_io);

 sdhci_free_host(host);

 return 0;
}
