
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_nand_cfg_slc {int wp_gpio; int rsetup; int rhold; int rwidth; int rdr_clks; int wsetup; int whold; int wwidth; int wdr_clks; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct lpc32xx_nand_cfg_slc* devm_kzalloc (struct device*,int,int ) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct lpc32xx_nand_cfg_slc *lpc32xx_parse_dt(struct device *dev)
{
 struct lpc32xx_nand_cfg_slc *ncfg;
 struct device_node *np = dev->of_node;

 ncfg = devm_kzalloc(dev, sizeof(*ncfg), GFP_KERNEL);
 if (!ncfg)
  return ((void*)0);

 of_property_read_u32(np, "nxp,wdr-clks", &ncfg->wdr_clks);
 of_property_read_u32(np, "nxp,wwidth", &ncfg->wwidth);
 of_property_read_u32(np, "nxp,whold", &ncfg->whold);
 of_property_read_u32(np, "nxp,wsetup", &ncfg->wsetup);
 of_property_read_u32(np, "nxp,rdr-clks", &ncfg->rdr_clks);
 of_property_read_u32(np, "nxp,rwidth", &ncfg->rwidth);
 of_property_read_u32(np, "nxp,rhold", &ncfg->rhold);
 of_property_read_u32(np, "nxp,rsetup", &ncfg->rsetup);

 if (!ncfg->wdr_clks || !ncfg->wwidth || !ncfg->whold ||
     !ncfg->wsetup || !ncfg->rdr_clks || !ncfg->rwidth ||
     !ncfg->rhold || !ncfg->rsetup) {
  dev_err(dev, "chip parameters not specified correctly\n");
  return ((void*)0);
 }

 ncfg->wp_gpio = of_get_named_gpio(np, "gpios", 0);

 return ncfg;
}
