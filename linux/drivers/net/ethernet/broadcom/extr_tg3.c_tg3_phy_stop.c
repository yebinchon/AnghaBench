
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int phy_flags; int phy_addr; int mdio_bus; } ;


 int TG3_PHYFLG_IS_CONNECTED ;
 int mdiobus_get_phy (int ,int ) ;
 int phy_stop (int ) ;

__attribute__((used)) static void tg3_phy_stop(struct tg3 *tp)
{
 if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED))
  return;

 phy_stop(mdiobus_get_phy(tp->mdio_bus, tp->phy_addr));
}
