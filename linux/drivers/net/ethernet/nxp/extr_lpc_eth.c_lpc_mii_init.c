
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct netdata_local {TYPE_2__* mii_bus; int ndev; TYPE_1__* pdev; int net_base; } ;
struct TYPE_8__ {char* name; int * parent; struct netdata_local* priv; int id; int * reset; int * write; int * read; } ;
struct TYPE_7__ {char* name; int id; int dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int LPC_COMMAND_PASSRUNTFRAME ;
 int LPC_COMMAND_RMII ;
 int LPC_ENET_COMMAND (int ) ;
 int LPC_ENET_SUPP (int ) ;
 int LPC_SUPP_RESET_RMII ;
 int MII_BUS_ID_SIZE ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 int lpc_mdio_read ;
 int lpc_mdio_reset ;
 int lpc_mdio_write ;
 scalar_t__ lpc_mii_probe (int ) ;
 scalar_t__ lpc_phy_interface_mode (int *) ;
 TYPE_2__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_2__*) ;
 scalar_t__ mdiobus_register (TYPE_2__*) ;
 int mdiobus_unregister (TYPE_2__*) ;
 int platform_set_drvdata (TYPE_1__*,TYPE_2__*) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int lpc_mii_init(struct netdata_local *pldat)
{
 int err = -ENXIO;

 pldat->mii_bus = mdiobus_alloc();
 if (!pldat->mii_bus) {
  err = -ENOMEM;
  goto err_out;
 }


 if (lpc_phy_interface_mode(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
  writel(LPC_COMMAND_PASSRUNTFRAME,
         LPC_ENET_COMMAND(pldat->net_base));
 else {
  writel((LPC_COMMAND_PASSRUNTFRAME | LPC_COMMAND_RMII),
         LPC_ENET_COMMAND(pldat->net_base));
  writel(LPC_SUPP_RESET_RMII, LPC_ENET_SUPP(pldat->net_base));
 }

 pldat->mii_bus->name = "lpc_mii_bus";
 pldat->mii_bus->read = &lpc_mdio_read;
 pldat->mii_bus->write = &lpc_mdio_write;
 pldat->mii_bus->reset = &lpc_mdio_reset;
 snprintf(pldat->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
   pldat->pdev->name, pldat->pdev->id);
 pldat->mii_bus->priv = pldat;
 pldat->mii_bus->parent = &pldat->pdev->dev;

 platform_set_drvdata(pldat->pdev, pldat->mii_bus);

 if (mdiobus_register(pldat->mii_bus))
  goto err_out_unregister_bus;

 if (lpc_mii_probe(pldat->ndev) != 0)
  goto err_out_unregister_bus;

 return 0;

err_out_unregister_bus:
 mdiobus_unregister(pldat->mii_bus);
 mdiobus_free(pldat->mii_bus);
err_out:
 return err;
}
