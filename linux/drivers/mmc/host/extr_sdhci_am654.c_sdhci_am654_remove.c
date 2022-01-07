
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct platform_device {int dev; } ;


 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_am654_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 int ret;

 sdhci_remove_host(host, 1);
 ret = pm_runtime_put_sync(&pdev->dev);
 if (ret < 0)
  return ret;

 pm_runtime_disable(&pdev->dev);
 sdhci_pltfm_free(pdev);

 return 0;
}
