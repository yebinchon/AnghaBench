
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct regmap* ERR_PTR (int ) ;
 struct regmap* dev_get_regmap (int *,int *) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static struct regmap *sun8i_dwmac_get_syscon_from_dev(struct device_node *node)
{
 struct device_node *syscon_node;
 struct platform_device *syscon_pdev;
 struct regmap *regmap = ((void*)0);

 syscon_node = of_parse_phandle(node, "syscon", 0);
 if (!syscon_node)
  return ERR_PTR(-ENODEV);

 syscon_pdev = of_find_device_by_node(syscon_node);
 if (!syscon_pdev) {

  regmap = ERR_PTR(-EPROBE_DEFER);
  goto out_put_node;
 }


 regmap = dev_get_regmap(&syscon_pdev->dev, ((void*)0));
 if (!regmap)
  regmap = ERR_PTR(-EINVAL);

 platform_device_put(syscon_pdev);
out_put_node:
 of_node_put(syscon_node);
 return regmap;
}
