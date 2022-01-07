
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_data {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_get_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,struct sdhci_pltfm_data const*,size_t) ;

int sdhci_pltfm_register(struct platform_device *pdev,
   const struct sdhci_pltfm_data *pdata,
   size_t priv_size)
{
 struct sdhci_host *host;
 int ret = 0;

 host = sdhci_pltfm_init(pdev, pdata, priv_size);
 if (IS_ERR(host))
  return PTR_ERR(host);

 sdhci_get_property(pdev);

 ret = sdhci_add_host(host);
 if (ret)
  sdhci_pltfm_free(pdev);

 return ret;
}
