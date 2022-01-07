
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

struct platform_device *vpu_get_plat_device(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *vpu_node;
 struct platform_device *vpu_pdev;

 vpu_node = of_parse_phandle(dev->of_node, "mediatek,vpu", 0);
 if (!vpu_node) {
  dev_err(dev, "can't get vpu node\n");
  return ((void*)0);
 }

 vpu_pdev = of_find_device_by_node(vpu_node);
 of_node_put(vpu_node);
 if (WARN_ON(!vpu_pdev)) {
  dev_err(dev, "vpu pdev failed\n");
  return ((void*)0);
 }

 return vpu_pdev;
}
