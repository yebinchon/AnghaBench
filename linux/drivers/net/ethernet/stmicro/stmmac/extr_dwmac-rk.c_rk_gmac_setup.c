
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {int clock_input; int tx_delay; int rx_delay; struct platform_device* pdev; scalar_t__ integrated_phy; int * phy_reset; int grf; int * regulator; struct rk_gmac_ops const* ops; int phy_iface; } ;
struct rk_gmac_ops {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {scalar_t__ phy_node; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 struct rk_priv_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 struct rk_priv_data* devm_kzalloc (struct device*,int,int ) ;
 int * devm_regulator_get_optional (struct device*,char*) ;
 int of_get_phy_mode (int ) ;
 scalar_t__ of_property_read_bool (scalar_t__,char*) ;
 int of_property_read_string (int ,char*,char const**) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int * of_reset_control_get (scalar_t__,int *) ;
 int strcmp (char const*,char*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
       struct plat_stmmacenet_data *plat,
       const struct rk_gmac_ops *ops)
{
 struct rk_priv_data *bsp_priv;
 struct device *dev = &pdev->dev;
 int ret;
 const char *strings = ((void*)0);
 int value;

 bsp_priv = devm_kzalloc(dev, sizeof(*bsp_priv), GFP_KERNEL);
 if (!bsp_priv)
  return ERR_PTR(-ENOMEM);

 bsp_priv->phy_iface = of_get_phy_mode(dev->of_node);
 bsp_priv->ops = ops;

 bsp_priv->regulator = devm_regulator_get_optional(dev, "phy");
 if (IS_ERR(bsp_priv->regulator)) {
  if (PTR_ERR(bsp_priv->regulator) == -EPROBE_DEFER) {
   dev_err(dev, "phy regulator is not available yet, deferred probing\n");
   return ERR_PTR(-EPROBE_DEFER);
  }
  dev_err(dev, "no regulator found\n");
  bsp_priv->regulator = ((void*)0);
 }

 ret = of_property_read_string(dev->of_node, "clock_in_out", &strings);
 if (ret) {
  dev_err(dev, "Can not read property: clock_in_out.\n");
  bsp_priv->clock_input = 1;
 } else {
  dev_info(dev, "clock input or output? (%s).\n",
    strings);
  if (!strcmp(strings, "input"))
   bsp_priv->clock_input = 1;
  else
   bsp_priv->clock_input = 0;
 }

 ret = of_property_read_u32(dev->of_node, "tx_delay", &value);
 if (ret) {
  bsp_priv->tx_delay = 0x30;
  dev_err(dev, "Can not read property: tx_delay.");
  dev_err(dev, "set tx_delay to 0x%x\n",
   bsp_priv->tx_delay);
 } else {
  dev_info(dev, "TX delay(0x%x).\n", value);
  bsp_priv->tx_delay = value;
 }

 ret = of_property_read_u32(dev->of_node, "rx_delay", &value);
 if (ret) {
  bsp_priv->rx_delay = 0x10;
  dev_err(dev, "Can not read property: rx_delay.");
  dev_err(dev, "set rx_delay to 0x%x\n",
   bsp_priv->rx_delay);
 } else {
  dev_info(dev, "RX delay(0x%x).\n", value);
  bsp_priv->rx_delay = value;
 }

 bsp_priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
       "rockchip,grf");

 if (plat->phy_node) {
  bsp_priv->integrated_phy = of_property_read_bool(plat->phy_node,
         "phy-is-integrated");
  if (bsp_priv->integrated_phy) {
   bsp_priv->phy_reset = of_reset_control_get(plat->phy_node, ((void*)0));
   if (IS_ERR(bsp_priv->phy_reset)) {
    dev_err(&pdev->dev, "No PHY reset control found.\n");
    bsp_priv->phy_reset = ((void*)0);
   }
  }
 }
 dev_info(dev, "integrated PHY? (%s).\n",
   bsp_priv->integrated_phy ? "yes" : "no");

 bsp_priv->pdev = pdev;

 return bsp_priv;
}
