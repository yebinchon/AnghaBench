
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_TPISTATUS ;
 int phy_modify (struct phy_device*,int,int,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static void vsc73xx_config_init(struct phy_device *phydev)
{

 phy_write(phydev, 0x1f, 0x2a30);
 phy_modify(phydev, 0x0c, 0x0300, 0x0200);
 phy_write(phydev, 0x1f, 0x0000);


 phy_modify(phydev, MII_TPISTATUS, 0xff00, 0x0061);
}
