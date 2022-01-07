
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int * mdio_bus; struct net_device* ndev; } ;
struct net_device {scalar_t__ phydev; } ;


 int mdiobus_free (int *) ;
 int mdiobus_unregister (int *) ;
 int phy_disconnect (scalar_t__) ;

void xgene_enet_mdio_remove(struct xgene_enet_pdata *pdata)
{
 struct net_device *ndev = pdata->ndev;

 if (ndev->phydev)
  phy_disconnect(ndev->phydev);

 mdiobus_unregister(pdata->mdio_bus);
 mdiobus_free(pdata->mdio_bus);
 pdata->mdio_bus = ((void*)0);
}
