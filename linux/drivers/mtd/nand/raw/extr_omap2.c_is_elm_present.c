
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct omap_nand_info {int * elm_dev; TYPE_1__* pdev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;

__attribute__((used)) static bool is_elm_present(struct omap_nand_info *info,
      struct device_node *elm_node)
{
 struct platform_device *pdev;


 if (!elm_node) {
  dev_err(&info->pdev->dev, "ELM devicetree node not found\n");
  return 0;
 }
 pdev = of_find_device_by_node(elm_node);

 if (!pdev) {
  dev_err(&info->pdev->dev, "ELM device not found\n");
  return 0;
 }

 info->elm_dev = &pdev->dev;
 return 1;
}
