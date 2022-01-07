
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {char* name; int id; TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct ftgmac100 {TYPE_2__* mii_bus; int dev; int netdev; scalar_t__ is_aspeed; scalar_t__ base; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {char* name; int * irq; int write; int read; int priv; int parent; int id; } ;


 int EIO ;
 scalar_t__ FTGMAC100_OFFSET_REVR ;
 int FTGMAC100_REVR_NEW_MDIO_INTERFACE ;
 int MII_BUS_ID_SIZE ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int PHY_INTERFACE_MODE_RMII ;
 int PHY_MAX_ADDR ;
 int PHY_POLL ;
 int dev_err (int ,char*) ;
 int ftgmac100_mdiobus_read ;
 int ftgmac100_mdiobus_write ;
 int ftgmac100_mii_probe (struct ftgmac100*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 TYPE_2__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_2__*) ;
 int mdiobus_register (TYPE_2__*) ;
 int mdiobus_unregister (TYPE_2__*) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_get_phy_mode (struct device_node*) ;
 int phy_modes (int) ;
 int snprintf (int ,int ,char*,char*,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int ftgmac100_setup_mdio(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);
 struct platform_device *pdev = to_platform_device(priv->dev);
 int phy_intf = PHY_INTERFACE_MODE_RGMII;
 struct device_node *np = pdev->dev.of_node;
 int i, err = 0;
 u32 reg;


 priv->mii_bus = mdiobus_alloc();
 if (!priv->mii_bus)
  return -EIO;

 if (of_device_is_compatible(np, "aspeed,ast2400-mac") ||
     of_device_is_compatible(np, "aspeed,ast2500-mac")) {





  reg = ioread32(priv->base + FTGMAC100_OFFSET_REVR);
  reg &= ~FTGMAC100_REVR_NEW_MDIO_INTERFACE;
  iowrite32(reg, priv->base + FTGMAC100_OFFSET_REVR);
 }


 if (np) {

  phy_intf = of_get_phy_mode(np);
  if (phy_intf < 0)
   phy_intf = PHY_INTERFACE_MODE_RGMII;
  if (priv->is_aspeed &&
      phy_intf != PHY_INTERFACE_MODE_RMII &&
      phy_intf != PHY_INTERFACE_MODE_RGMII &&
      phy_intf != PHY_INTERFACE_MODE_RGMII_ID &&
      phy_intf != PHY_INTERFACE_MODE_RGMII_RXID &&
      phy_intf != PHY_INTERFACE_MODE_RGMII_TXID) {
   netdev_warn(netdev,
       "Unsupported PHY mode %s !\n",
       phy_modes(phy_intf));
  }
 }

 priv->mii_bus->name = "ftgmac100_mdio";
 snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%d",
   pdev->name, pdev->id);
 priv->mii_bus->parent = priv->dev;
 priv->mii_bus->priv = priv->netdev;
 priv->mii_bus->read = ftgmac100_mdiobus_read;
 priv->mii_bus->write = ftgmac100_mdiobus_write;

 for (i = 0; i < PHY_MAX_ADDR; i++)
  priv->mii_bus->irq[i] = PHY_POLL;

 err = mdiobus_register(priv->mii_bus);
 if (err) {
  dev_err(priv->dev, "Cannot register MDIO bus!\n");
  goto err_register_mdiobus;
 }

 err = ftgmac100_mii_probe(priv, phy_intf);
 if (err) {
  dev_err(priv->dev, "MII Probe failed!\n");
  goto err_mii_probe;
 }

 return 0;

err_mii_probe:
 mdiobus_unregister(priv->mii_bus);
err_register_mdiobus:
 mdiobus_free(priv->mii_bus);
 return err;
}
