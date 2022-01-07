
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {char* name; TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct mii_bus {char* name; TYPE_1__* parent; struct fec_enet_private* priv; int id; int write; int read; } ;
struct fec_enet_private {int quirks; scalar_t__ dev_id; int phy_speed; struct mii_bus* mii_bus; scalar_t__ hwp; int clk_ipg; } ;
struct device_node {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ FEC_MII_SPEED ;
 int FEC_QUIRK_ENET_MAC ;
 int FEC_QUIRK_SINGLE_MDIO ;
 int MII_BUS_ID_SIZE ;
 int clk_get_rate (int ) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int fec_enet_mdio_read ;
 int fec_enet_mdio_write ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 scalar_t__ mii_cnt ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int snprintf (int ,int ,char*,char*,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int fec_enet_mii_init(struct platform_device *pdev)
{
 static struct mii_bus *fec0_mii_bus;
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct device_node *node;
 int err = -ENXIO;
 u32 mii_speed, holdtime;
 if ((fep->quirks & FEC_QUIRK_SINGLE_MDIO) && fep->dev_id > 0) {

  if (mii_cnt && fec0_mii_bus) {
   fep->mii_bus = fec0_mii_bus;
   mii_cnt++;
   return 0;
  }
  return -ENOENT;
 }
 mii_speed = DIV_ROUND_UP(clk_get_rate(fep->clk_ipg), 5000000);
 if (fep->quirks & FEC_QUIRK_ENET_MAC)
  mii_speed--;
 if (mii_speed > 63) {
  dev_err(&pdev->dev,
   "fec clock (%lu) too fast to get right mii speed\n",
   clk_get_rate(fep->clk_ipg));
  err = -EINVAL;
  goto err_out;
 }
 holdtime = DIV_ROUND_UP(clk_get_rate(fep->clk_ipg), 100000000) - 1;

 fep->phy_speed = mii_speed << 1 | holdtime << 8;

 writel(fep->phy_speed, fep->hwp + FEC_MII_SPEED);

 fep->mii_bus = mdiobus_alloc();
 if (fep->mii_bus == ((void*)0)) {
  err = -ENOMEM;
  goto err_out;
 }

 fep->mii_bus->name = "fec_enet_mii_bus";
 fep->mii_bus->read = fec_enet_mdio_read;
 fep->mii_bus->write = fec_enet_mdio_write;
 snprintf(fep->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
  pdev->name, fep->dev_id + 1);
 fep->mii_bus->priv = fep;
 fep->mii_bus->parent = &pdev->dev;

 node = of_get_child_by_name(pdev->dev.of_node, "mdio");
 err = of_mdiobus_register(fep->mii_bus, node);
 of_node_put(node);
 if (err)
  goto err_out_free_mdiobus;

 mii_cnt++;


 if (fep->quirks & FEC_QUIRK_SINGLE_MDIO)
  fec0_mii_bus = fep->mii_bus;

 return 0;

err_out_free_mdiobus:
 mdiobus_free(fep->mii_bus);
err_out:
 return err;
}
