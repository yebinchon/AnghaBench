
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct altr_sysmgr {struct regmap* regmap; } ;
struct TYPE_2__ {int driver; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct regmap* ERR_PTR (int ) ;
 TYPE_1__ altr_sysmgr_driver ;
 struct altr_sysmgr* dev_get_drvdata (struct device*) ;
 struct device* driver_find_device_by_of_node (int *,void*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char const*,int ) ;

struct regmap *altr_sysmgr_regmap_lookup_by_phandle(struct device_node *np,
          const char *property)
{
 struct device *dev;
 struct altr_sysmgr *sysmgr;
 struct device_node *sysmgr_np;

 if (property)
  sysmgr_np = of_parse_phandle(np, property, 0);
 else
  sysmgr_np = np;

 if (!sysmgr_np)
  return ERR_PTR(-ENODEV);

 dev = driver_find_device_by_of_node(&altr_sysmgr_driver.driver,
         (void *)sysmgr_np);
 of_node_put(sysmgr_np);
 if (!dev)
  return ERR_PTR(-EPROBE_DEFER);

 sysmgr = dev_get_drvdata(dev);

 return sysmgr->regmap;
}
