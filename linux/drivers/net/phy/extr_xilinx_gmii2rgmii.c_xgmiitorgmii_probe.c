
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phy_driver {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct mdio_device {struct device dev; } ;
struct TYPE_5__ {int read_status; } ;
struct gmii2rgmii {TYPE_2__ conv_phy_drv; TYPE_1__* phy_dev; TYPE_2__* phy_drv; struct mdio_device* mdio; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_2__* drv; int mdio; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 struct gmii2rgmii* devm_kzalloc (struct device*,int,int ) ;
 int mdiodev_set_drvdata (int *,struct gmii2rgmii*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 TYPE_1__* of_phy_find_device (struct device_node*) ;
 int xgmiitorgmii_read_status ;

__attribute__((used)) static int xgmiitorgmii_probe(struct mdio_device *mdiodev)
{
 struct device *dev = &mdiodev->dev;
 struct device_node *np = dev->of_node, *phy_node;
 struct gmii2rgmii *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 phy_node = of_parse_phandle(np, "phy-handle", 0);
 if (!phy_node) {
  dev_err(dev, "Couldn't parse phy-handle\n");
  return -ENODEV;
 }

 priv->phy_dev = of_phy_find_device(phy_node);
 of_node_put(phy_node);
 if (!priv->phy_dev) {
  dev_info(dev, "Couldn't find phydev\n");
  return -EPROBE_DEFER;
 }

 if (!priv->phy_dev->drv) {
  dev_info(dev, "Attached phy not ready\n");
  return -EPROBE_DEFER;
 }

 priv->mdio = mdiodev;
 priv->phy_drv = priv->phy_dev->drv;
 memcpy(&priv->conv_phy_drv, priv->phy_dev->drv,
        sizeof(struct phy_driver));
 priv->conv_phy_drv.read_status = xgmiitorgmii_read_status;
 mdiodev_set_drvdata(&priv->phy_dev->mdio, priv);
 priv->phy_dev->drv = &priv->conv_phy_drv;

 return 0;
}
