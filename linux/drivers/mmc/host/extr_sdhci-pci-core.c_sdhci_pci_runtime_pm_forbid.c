
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;

__attribute__((used)) static void sdhci_pci_runtime_pm_forbid(struct device *dev)
{
 pm_runtime_forbid(dev);
 pm_runtime_get_noresume(dev);
}
