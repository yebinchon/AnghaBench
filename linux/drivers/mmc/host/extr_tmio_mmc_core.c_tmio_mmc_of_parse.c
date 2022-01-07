
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int caps2; } ;
struct device_node {int dummy; } ;


 int MMC_CAP2_NO_WRITE_PROTECT ;
 scalar_t__ of_get_property (struct device_node const*,char*,int *) ;

__attribute__((used)) static void tmio_mmc_of_parse(struct platform_device *pdev,
         struct mmc_host *mmc)
{
 const struct device_node *np = pdev->dev.of_node;

 if (!np)
  return;






 if (of_get_property(np, "toshiba,mmc-wrprotect-disable", ((void*)0)))
  mmc->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;
}
