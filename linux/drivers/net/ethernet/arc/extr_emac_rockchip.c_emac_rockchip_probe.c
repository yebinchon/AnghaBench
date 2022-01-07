
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * clk; int set_mac_speed; int drv_version; int drv_name; } ;
struct rockchip_priv_data {int * refclk; int * regulator; int * macclk; TYPE_2__* soc_data; int * grf; TYPE_1__ emac; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int grf_speed_offset; int grf_mode_offset; scalar_t__ need_div_macclk; int grf_offset; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTSUPP ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PHY_INTERFACE_MODE_RMII ;
 int PTR_ERR (int *) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int arc_emac_probe (struct net_device*,int) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int clk_set_rate (int *,int) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_regulator_get_optional (struct device*,char*) ;
 int emac_rockchip_dt_ids ;
 int emac_rockchip_set_mac_speed ;
 int free_netdev (struct net_device*) ;
 struct rockchip_priv_data* netdev_priv (struct net_device*) ;
 int of_get_phy_mode (int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int regmap_write (int *,int ,int) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int emac_rockchip_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct net_device *ndev;
 struct rockchip_priv_data *priv;
 const struct of_device_id *match;
 u32 data;
 int err, interface;

 if (!pdev->dev.of_node)
  return -ENODEV;

 ndev = alloc_etherdev(sizeof(struct rockchip_priv_data));
 if (!ndev)
  return -ENOMEM;
 platform_set_drvdata(pdev, ndev);
 SET_NETDEV_DEV(ndev, dev);

 priv = netdev_priv(ndev);
 priv->emac.drv_name = DRV_NAME;
 priv->emac.drv_version = DRV_VERSION;
 priv->emac.set_mac_speed = emac_rockchip_set_mac_speed;

 interface = of_get_phy_mode(dev->of_node);


 if (interface != PHY_INTERFACE_MODE_RMII) {
  dev_err(dev, "unsupported phy interface mode %d\n", interface);
  err = -ENOTSUPP;
  goto out_netdev;
 }

 priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
          "rockchip,grf");
 if (IS_ERR(priv->grf)) {
  dev_err(dev, "failed to retrieve global register file (%ld)\n",
   PTR_ERR(priv->grf));
  err = PTR_ERR(priv->grf);
  goto out_netdev;
 }

 match = of_match_node(emac_rockchip_dt_ids, dev->of_node);
 priv->soc_data = match->data;

 priv->emac.clk = devm_clk_get(dev, "hclk");
 if (IS_ERR(priv->emac.clk)) {
  dev_err(dev, "failed to retrieve host clock (%ld)\n",
   PTR_ERR(priv->emac.clk));
  err = PTR_ERR(priv->emac.clk);
  goto out_netdev;
 }

 priv->refclk = devm_clk_get(dev, "macref");
 if (IS_ERR(priv->refclk)) {
  dev_err(dev, "failed to retrieve reference clock (%ld)\n",
   PTR_ERR(priv->refclk));
  err = PTR_ERR(priv->refclk);
  goto out_netdev;
 }

 err = clk_prepare_enable(priv->refclk);
 if (err) {
  dev_err(dev, "failed to enable reference clock (%d)\n", err);
  goto out_netdev;
 }


 priv->regulator = devm_regulator_get_optional(dev, "phy");
 if (IS_ERR(priv->regulator)) {
  if (PTR_ERR(priv->regulator) == -EPROBE_DEFER) {
   err = -EPROBE_DEFER;
   goto out_clk_disable;
  }
  dev_err(dev, "no regulator found\n");
  priv->regulator = ((void*)0);
 }

 if (priv->regulator) {
  err = regulator_enable(priv->regulator);
  if (err) {
   dev_err(dev, "failed to enable phy-supply (%d)\n", err);
   goto out_clk_disable;
  }
 }


 data = (1 << (priv->soc_data->grf_speed_offset + 16)) |
        (1 << priv->soc_data->grf_speed_offset);

 data |= (1 << (priv->soc_data->grf_mode_offset + 16)) |
  (0 << priv->soc_data->grf_mode_offset);

 err = regmap_write(priv->grf, priv->soc_data->grf_offset, data);
 if (err) {
  dev_err(dev, "unable to apply initial settings to grf (%d)\n",
   err);
  goto out_regulator_disable;
 }


 err = clk_set_rate(priv->refclk, 50000000);
 if (err) {
  dev_err(dev,
   "failed to change reference clock rate (%d)\n", err);
  goto out_regulator_disable;
 }

 if (priv->soc_data->need_div_macclk) {
  priv->macclk = devm_clk_get(dev, "macclk");
  if (IS_ERR(priv->macclk)) {
   dev_err(dev, "failed to retrieve mac clock (%ld)\n",
    PTR_ERR(priv->macclk));
   err = PTR_ERR(priv->macclk);
   goto out_regulator_disable;
  }

  err = clk_prepare_enable(priv->macclk);
  if (err) {
   dev_err(dev, "failed to enable mac clock (%d)\n", err);
   goto out_regulator_disable;
  }


  err = clk_set_rate(priv->macclk, 25000000);
  if (err) {
   dev_err(dev,
    "failed to change mac clock rate (%d)\n", err);
   goto out_clk_disable_macclk;
  }
 }

 err = arc_emac_probe(ndev, interface);
 if (err) {
  dev_err(dev, "failed to probe arc emac (%d)\n", err);
  goto out_clk_disable_macclk;
 }

 return 0;

out_clk_disable_macclk:
 if (priv->soc_data->need_div_macclk)
  clk_disable_unprepare(priv->macclk);
out_regulator_disable:
 if (priv->regulator)
  regulator_disable(priv->regulator);
out_clk_disable:
 clk_disable_unprepare(priv->refclk);
out_netdev:
 free_netdev(ndev);
 return err;
}
