
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct davinci_mmc_config* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct mmc_host {int parent; } ;
struct davinci_mmc_config {int (* get_cd ) (int ) ;} ;


 int mmc_gpio_get_cd (struct mmc_host*) ;
 int stub1 (int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int mmc_davinci_get_cd(struct mmc_host *mmc)
{
 struct platform_device *pdev = to_platform_device(mmc->parent);
 struct davinci_mmc_config *config = pdev->dev.platform_data;

 if (config && config->get_cd)
  return config->get_cd(pdev->id);

 return mmc_gpio_get_cd(mmc);
}
