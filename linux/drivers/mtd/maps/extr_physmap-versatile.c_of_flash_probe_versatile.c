
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct map_info {int set_vpp; } ;
struct device_node {int dummy; } ;
typedef enum versatile_flashprot { ____Placeholder_versatile_flashprot } versatile_flashprot ;


 int ENODEV ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;


 int ap_flash_init (struct platform_device*) ;
 int ap_flash_set_vpp ;
 int cp_flash_set_vpp ;
 int dev_info (int *,char*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_find_matching_node_and_match (int *,int ,struct of_device_id const**) ;
 int syscon_match ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;
 struct regmap* syscon_regmap ;
 int versatile_flash_set_vpp ;

int of_flash_probe_versatile(struct platform_device *pdev,
        struct device_node *np,
        struct map_info *map)
{
 struct device_node *sysnp;
 const struct of_device_id *devid;
 struct regmap *rmap;
 static enum versatile_flashprot versatile_flashprot;
 int ret;


 if (!of_device_is_compatible(np, "arm,versatile-flash"))
  return 0;


 if (!syscon_regmap) {
  sysnp = of_find_matching_node_and_match(((void*)0),
       syscon_match,
       &devid);
  if (!sysnp)
   return -ENODEV;

  versatile_flashprot = (enum versatile_flashprot)devid->data;
  rmap = syscon_node_to_regmap(sysnp);
  if (IS_ERR(rmap))
   return PTR_ERR(rmap);

  syscon_regmap = rmap;
 }

 switch (versatile_flashprot) {
 case 131:
  ret = ap_flash_init(pdev);
  if (ret)
   return ret;
  map->set_vpp = ap_flash_set_vpp;
  dev_info(&pdev->dev, "Integrator/AP flash protection\n");
  break;
 case 130:
  map->set_vpp = cp_flash_set_vpp;
  dev_info(&pdev->dev, "Integrator/CP flash protection\n");
  break;
 case 128:
 case 129:
  map->set_vpp = versatile_flash_set_vpp;
  dev_info(&pdev->dev, "versatile/realview flash protection\n");
  break;
 default:
  dev_info(&pdev->dev, "device marked as Versatile flash "
    "but no system controller was found\n");
  break;
 }

 return 0;
}
