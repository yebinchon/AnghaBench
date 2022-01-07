
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_acpi_host {int host; TYPE_1__* slot; scalar_t__ use_runtime_pm; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int (* free_slot ) (struct platform_device*) ;int (* remove_slot ) (struct platform_device*) ;} ;


 int SDHCI_INT_STATUS ;
 struct sdhci_acpi_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int sdhci_free_host (int ) ;
 int sdhci_readl (int ,int ) ;
 int sdhci_remove_host (int ,int) ;
 int stub1 (struct platform_device*) ;
 int stub2 (struct platform_device*) ;

__attribute__((used)) static int sdhci_acpi_remove(struct platform_device *pdev)
{
 struct sdhci_acpi_host *c = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 int dead;

 if (c->use_runtime_pm) {
  pm_runtime_get_sync(dev);
  pm_runtime_disable(dev);
  pm_runtime_put_noidle(dev);
 }

 if (c->slot && c->slot->remove_slot)
  c->slot->remove_slot(pdev);

 dead = (sdhci_readl(c->host, SDHCI_INT_STATUS) == ~0);
 sdhci_remove_host(c->host, dead);

 if (c->slot && c->slot->free_slot)
  c->slot->free_slot(pdev);

 sdhci_free_host(c->host);

 return 0;
}
