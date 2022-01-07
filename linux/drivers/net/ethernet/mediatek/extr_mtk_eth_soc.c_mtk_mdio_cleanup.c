
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int mii_bus; } ;


 int mdiobus_unregister (int ) ;

__attribute__((used)) static void mtk_mdio_cleanup(struct mtk_eth *eth)
{
 if (!eth->mii_bus)
  return;

 mdiobus_unregister(eth->mii_bus);
}
