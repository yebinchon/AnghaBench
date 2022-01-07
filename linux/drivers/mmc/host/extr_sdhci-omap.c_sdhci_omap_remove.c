
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_omap_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sdhci_host *host = platform_get_drvdata(pdev);

 sdhci_remove_host(host, 1);
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 sdhci_pltfm_free(pdev);

 return 0;
}
