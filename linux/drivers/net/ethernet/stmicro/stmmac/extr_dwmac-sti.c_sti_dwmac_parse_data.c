
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_dwmac {struct regmap* clk; int speed; int tx_retime_src; int interface; void* ext_phyclk; void* gmac_en; struct regmap* regmap; int ctrl_reg; int clk_sel_reg; } ;
struct resource {int start; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENXIO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 scalar_t__ IS_PHY_IF_MODE_GBIT (int ) ;
 int PTR_ERR (struct regmap*) ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int TX_RETIME_SRC_CLKGEN ;
 int TX_RETIME_SRC_CLK_125 ;
 int TX_RETIME_SRC_NA ;
 int TX_RETIME_SRC_TXCLK ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 struct regmap* devm_clk_get (struct device*,char*) ;
 int of_get_phy_mode (struct device_node*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int strcasecmp (char const*,char*) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int sti_dwmac_parse_data(struct sti_dwmac *dwmac,
    struct platform_device *pdev)
{
 struct resource *res;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct regmap *regmap;
 int err;


 dwmac->clk_sel_reg = -ENXIO;
 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sti-clkconf");
 if (res)
  dwmac->clk_sel_reg = res->start;

 regmap = syscon_regmap_lookup_by_phandle(np, "st,syscon");
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 err = of_property_read_u32_index(np, "st,syscon", 1, &dwmac->ctrl_reg);
 if (err) {
  dev_err(dev, "Can't get sysconfig ctrl offset (%d)\n", err);
  return err;
 }

 dwmac->interface = of_get_phy_mode(np);
 dwmac->regmap = regmap;
 dwmac->gmac_en = of_property_read_bool(np, "st,gmac_en");
 dwmac->ext_phyclk = of_property_read_bool(np, "st,ext-phyclk");
 dwmac->tx_retime_src = TX_RETIME_SRC_NA;
 dwmac->speed = SPEED_100;

 if (IS_PHY_IF_MODE_GBIT(dwmac->interface)) {
  const char *rs;

  dwmac->tx_retime_src = TX_RETIME_SRC_CLKGEN;

  err = of_property_read_string(np, "st,tx-retime-src", &rs);
  if (err < 0) {
   dev_warn(dev, "Use internal clock source\n");
  } else {
   if (!strcasecmp(rs, "clk_125"))
    dwmac->tx_retime_src = TX_RETIME_SRC_CLK_125;
   else if (!strcasecmp(rs, "txclk"))
    dwmac->tx_retime_src = TX_RETIME_SRC_TXCLK;
  }
  dwmac->speed = SPEED_1000;
 }

 dwmac->clk = devm_clk_get(dev, "sti-ethclk");
 if (IS_ERR(dwmac->clk)) {
  dev_warn(dev, "No phy clock provided...\n");
  dwmac->clk = ((void*)0);
 }

 return 0;
}
