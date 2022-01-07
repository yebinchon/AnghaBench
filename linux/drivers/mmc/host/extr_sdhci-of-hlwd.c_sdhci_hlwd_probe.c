
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int sdhci_hlwd_pdata ;
 int sdhci_pltfm_register (struct platform_device*,int *,int ) ;

__attribute__((used)) static int sdhci_hlwd_probe(struct platform_device *pdev)
{
 return sdhci_pltfm_register(pdev, &sdhci_hlwd_pdata, 0);
}
