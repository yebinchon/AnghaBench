
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 void sdhci_get_property (struct platform_device*) ;

__attribute__((used)) static inline void sdhci_get_of_property(struct platform_device *pdev)
{
 return sdhci_get_property(pdev);
}
