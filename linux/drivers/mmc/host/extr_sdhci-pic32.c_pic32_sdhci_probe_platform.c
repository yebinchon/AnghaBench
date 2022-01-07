
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int caps; scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct pic32_sdhci_priv {int dummy; } ;


 scalar_t__ SDHCI_CAPABILITIES ;
 int SDH_CAPS_SDH_SLOT_TYPE_MASK ;
 int SDH_SLOT_TYPE_SHARED_BUS ;
 int pic32_sdhci_shared_bus (struct platform_device*) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pic32_sdhci_probe_platform(struct platform_device *pdev,
          struct pic32_sdhci_priv *pdata)
{
 int ret = 0;
 u32 caps_slot_type;
 struct sdhci_host *host = platform_get_drvdata(pdev);


 host->caps = readl(host->ioaddr + SDHCI_CAPABILITIES);
 caps_slot_type = (host->caps & SDH_CAPS_SDH_SLOT_TYPE_MASK) >> 30;
 if (caps_slot_type == SDH_SLOT_TYPE_SHARED_BUS)
  pic32_sdhci_shared_bus(pdev);

 return ret;
}
