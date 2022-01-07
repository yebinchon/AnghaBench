
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct pltfm_imx_data {int dummy; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int
sdhci_esdhc_imx_probe_dt(struct platform_device *pdev,
    struct sdhci_host *host,
    struct pltfm_imx_data *imx_data)
{
 return -ENODEV;
}
