
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {scalar_t__ phy_mode; int mdio_driver; int ndev; } ;


 int CONFIG_MDIO_XGENE ;
 int IS_ENABLED (int ) ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int xgene_enet_phy_connect (int ) ;

__attribute__((used)) static void xgene_enet_check_phy_handle(struct xgene_enet_pdata *pdata)
{
 int ret;

 if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII)
  return;

 if (!IS_ENABLED(CONFIG_MDIO_XGENE))
  return;

 ret = xgene_enet_phy_connect(pdata->ndev);
 if (!ret)
  pdata->mdio_driver = 1;
}
