
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; } ;
struct regmap_config {scalar_t__ max_register; int reg_write; int reg_read; scalar_t__ reg_stride; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct altr_sysmgr {struct regmap* regmap; int * base; } ;
typedef int resource_size_t ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap_config altr_sysmgr_regmap_cfg ;
 int * devm_ioremap (struct device*,scalar_t__,scalar_t__) ;
 struct altr_sysmgr* devm_kzalloc (struct device*,int,int ) ;
 struct regmap* devm_regmap_init (struct device*,int *,int *,struct regmap_config*) ;
 struct regmap* devm_regmap_init_mmio (struct device*,int *,struct regmap_config*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct altr_sysmgr*) ;
 int pr_err (char*) ;
 scalar_t__ resource_size (struct resource*) ;
 int s10_protected_reg_read ;
 int s10_protected_reg_write ;

__attribute__((used)) static int sysmgr_probe(struct platform_device *pdev)
{
 struct altr_sysmgr *sysmgr;
 struct regmap *regmap;
 struct resource *res;
 struct regmap_config sysmgr_config = altr_sysmgr_regmap_cfg;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;

 sysmgr = devm_kzalloc(dev, sizeof(*sysmgr), GFP_KERNEL);
 if (!sysmgr)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENOENT;

 sysmgr_config.max_register = resource_size(res) -
         sysmgr_config.reg_stride;
 if (of_device_is_compatible(np, "altr,sys-mgr-s10")) {

  sysmgr->base = (resource_size_t *)res->start;
  sysmgr_config.reg_read = s10_protected_reg_read;
  sysmgr_config.reg_write = s10_protected_reg_write;

  regmap = devm_regmap_init(dev, ((void*)0), sysmgr->base,
       &sysmgr_config);
 } else {
  sysmgr->base = devm_ioremap(dev, res->start,
         resource_size(res));
  if (!sysmgr->base)
   return -ENOMEM;

  sysmgr_config.max_register = res->end - res->start - 3;
  regmap = devm_regmap_init_mmio(dev, sysmgr->base,
            &sysmgr_config);
 }

 if (IS_ERR(regmap)) {
  pr_err("regmap init failed\n");
  return PTR_ERR(regmap);
 }

 sysmgr->regmap = regmap;

 platform_set_drvdata(pdev, sysmgr);

 return 0;
}
