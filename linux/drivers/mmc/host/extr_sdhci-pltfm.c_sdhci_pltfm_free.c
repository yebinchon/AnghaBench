
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;


 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int sdhci_free_host (struct sdhci_host*) ;

void sdhci_pltfm_free(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);

 sdhci_free_host(host);
}
