
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int clk_mdio; scalar_t__ mii_bus; } ;


 int clk_disable_unprepare (int ) ;
 int mdiobus_unregister (scalar_t__) ;

__attribute__((used)) static void ag71xx_mdio_remove(struct ag71xx *ag)
{
 if (ag->mii_bus)
  mdiobus_unregister(ag->mii_bus);
 clk_disable_unprepare(ag->clk_mdio);
}
