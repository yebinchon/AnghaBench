
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int phydev; int dev; } ;
struct greth_private {int irq; TYPE_1__* mdio; struct net_device* netdev; scalar_t__ edcl; } ;
struct TYPE_5__ {char* name; struct greth_private* priv; int write; int read; int id; } ;


 int ENOMEM ;
 int HZ ;
 int MII_BUS_ID_SIZE ;
 int dev_err (int *,char*) ;
 int greth_edcl ;
 int greth_link_change (struct net_device*) ;
 int greth_mdio_probe (struct net_device*) ;
 int greth_mdio_read ;
 int greth_mdio_write ;
 int jiffies ;
 TYPE_1__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_register (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 scalar_t__ netif_msg_probe (struct greth_private*) ;
 int phy_aneg_done (int ) ;
 int phy_read_status (int ) ;
 int phy_start (int ) ;
 int phy_start_aneg (int ) ;
 int snprintf (int ,int ,char*,char*,int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int greth_mdio_init(struct greth_private *greth)
{
 int ret;
 unsigned long timeout;
 struct net_device *ndev = greth->netdev;

 greth->mdio = mdiobus_alloc();
 if (!greth->mdio) {
  return -ENOMEM;
 }

 greth->mdio->name = "greth-mdio";
 snprintf(greth->mdio->id, MII_BUS_ID_SIZE, "%s-%d", greth->mdio->name, greth->irq);
 greth->mdio->read = greth_mdio_read;
 greth->mdio->write = greth_mdio_write;
 greth->mdio->priv = greth;

 ret = mdiobus_register(greth->mdio);
 if (ret) {
  goto error;
 }

 ret = greth_mdio_probe(greth->netdev);
 if (ret) {
  if (netif_msg_probe(greth))
   dev_err(&greth->netdev->dev, "failed to probe MDIO bus\n");
  goto unreg_mdio;
 }

 phy_start(ndev->phydev);


 if (greth->edcl && greth_edcl == 1) {
  phy_start_aneg(ndev->phydev);
  timeout = jiffies + 6*HZ;
  while (!phy_aneg_done(ndev->phydev) &&
         time_before(jiffies, timeout)) {
  }
  phy_read_status(ndev->phydev);
  greth_link_change(greth->netdev);
 }

 return 0;

unreg_mdio:
 mdiobus_unregister(greth->mdio);
error:
 mdiobus_free(greth->mdio);
 return ret;
}
