
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_nand_cfg_mlc {int wp_gpio; int wr_low; int wr_high; int rd_low; int rd_high; int nand_ta; int busy_delay; int tcea_delay; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct lpc32xx_nand_cfg_mlc* devm_kzalloc (struct device*,int,int ) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct lpc32xx_nand_cfg_mlc *lpc32xx_parse_dt(struct device *dev)
{
 struct lpc32xx_nand_cfg_mlc *ncfg;
 struct device_node *np = dev->of_node;

 ncfg = devm_kzalloc(dev, sizeof(*ncfg), GFP_KERNEL);
 if (!ncfg)
  return ((void*)0);

 of_property_read_u32(np, "nxp,tcea-delay", &ncfg->tcea_delay);
 of_property_read_u32(np, "nxp,busy-delay", &ncfg->busy_delay);
 of_property_read_u32(np, "nxp,nand-ta", &ncfg->nand_ta);
 of_property_read_u32(np, "nxp,rd-high", &ncfg->rd_high);
 of_property_read_u32(np, "nxp,rd-low", &ncfg->rd_low);
 of_property_read_u32(np, "nxp,wr-high", &ncfg->wr_high);
 of_property_read_u32(np, "nxp,wr-low", &ncfg->wr_low);

 if (!ncfg->tcea_delay || !ncfg->busy_delay || !ncfg->nand_ta ||
     !ncfg->rd_high || !ncfg->rd_low || !ncfg->wr_high ||
     !ncfg->wr_low) {
  dev_err(dev, "chip parameters not specified correctly\n");
  return ((void*)0);
 }

 ncfg->wp_gpio = of_get_named_gpio(np, "gpios", 0);

 return ncfg;
}
