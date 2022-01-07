
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_allow (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int pm_suspend_ignore_children (struct device*,int) ;

__attribute__((used)) static void sdhci_pci_runtime_pm_allow(struct device *dev)
{
 pm_suspend_ignore_children(dev, 1);
 pm_runtime_set_autosuspend_delay(dev, 50);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_allow(dev);

 pm_runtime_put_noidle(dev);
}
