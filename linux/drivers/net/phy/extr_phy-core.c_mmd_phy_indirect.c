
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;


 int MII_MMD_CTRL ;
 int MII_MMD_CTRL_NOINCR ;
 int MII_MMD_DATA ;
 int __mdiobus_write (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static void mmd_phy_indirect(struct mii_bus *bus, int phy_addr, int devad,
        u16 regnum)
{

 __mdiobus_write(bus, phy_addr, MII_MMD_CTRL, devad);


 __mdiobus_write(bus, phy_addr, MII_MMD_DATA, regnum);


 __mdiobus_write(bus, phy_addr, MII_MMD_CTRL,
   devad | MII_MMD_CTRL_NOINCR);
}
