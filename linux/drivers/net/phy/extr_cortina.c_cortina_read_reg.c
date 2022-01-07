
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int addr; int bus; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int MII_ADDR_C45 ;
 int mdiobus_read (int ,int ,int) ;

__attribute__((used)) static int cortina_read_reg(struct phy_device *phydev, u16 regnum)
{
 return mdiobus_read(phydev->mdio.bus, phydev->mdio.addr,
       MII_ADDR_C45 | regnum);
}
