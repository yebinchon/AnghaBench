
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct net_device {int dummy; } ;
struct arc_emac_priv {int clk; int drv_version; int drv_name; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PHY_INTERFACE_MODE_MII ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int arc_emac_probe (struct net_device*,int) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int free_netdev (struct net_device*) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int of_get_phy_mode (int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;

__attribute__((used)) static int emac_arc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct net_device *ndev;
 struct arc_emac_priv *priv;
 int interface, err;

 if (!dev->of_node)
  return -ENODEV;

 ndev = alloc_etherdev(sizeof(struct arc_emac_priv));
 if (!ndev)
  return -ENOMEM;
 platform_set_drvdata(pdev, ndev);
 SET_NETDEV_DEV(ndev, dev);

 priv = netdev_priv(ndev);
 priv->drv_name = DRV_NAME;
 priv->drv_version = DRV_VERSION;

 interface = of_get_phy_mode(dev->of_node);
 if (interface < 0)
  interface = PHY_INTERFACE_MODE_MII;

 priv->clk = devm_clk_get(dev, "hclk");
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "failed to retrieve host clock from device tree\n");
  err = -EINVAL;
  goto out_netdev;
 }

 err = arc_emac_probe(ndev, interface);
out_netdev:
 if (err)
  free_netdev(ndev);
 return err;
}
