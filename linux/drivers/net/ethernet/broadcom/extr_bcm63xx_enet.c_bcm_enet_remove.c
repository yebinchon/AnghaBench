
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int mac_clk; int phy_clk; int mii_bus; scalar_t__ has_phy; } ;
struct bcm63xx_enet_platform_data {int (* mii_config ) (struct net_device*,int ,int ,int ) ;} ;


 int ENET_MIISC_REG ;
 int bcm_enet_mdio_read_mii ;
 int bcm_enet_mdio_write_mii ;
 int clk_disable_unprepare (int ) ;
 struct bcm63xx_enet_platform_data* dev_get_platdata (int *) ;
 int enet_writel (struct bcm_enet_priv*,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct net_device*,int ,int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int bcm_enet_remove(struct platform_device *pdev)
{
 struct bcm_enet_priv *priv;
 struct net_device *dev;


 dev = platform_get_drvdata(pdev);
 priv = netdev_priv(dev);
 unregister_netdev(dev);


 enet_writel(priv, 0, ENET_MIISC_REG);

 if (priv->has_phy) {
  mdiobus_unregister(priv->mii_bus);
  mdiobus_free(priv->mii_bus);
 } else {
  struct bcm63xx_enet_platform_data *pd;

  pd = dev_get_platdata(&pdev->dev);
  if (pd && pd->mii_config)
   pd->mii_config(dev, 0, bcm_enet_mdio_read_mii,
           bcm_enet_mdio_write_mii);
 }


 clk_disable_unprepare(priv->phy_clk);
 clk_disable_unprepare(priv->mac_clk);

 free_netdev(dev);
 return 0;
}
