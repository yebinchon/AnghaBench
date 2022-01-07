
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int PHY_SPM ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int upd60620_config_init(struct phy_device *phydev)
{


 return phy_write(phydev, PHY_SPM, 0x0180 | phydev->mdio.addr);
}
