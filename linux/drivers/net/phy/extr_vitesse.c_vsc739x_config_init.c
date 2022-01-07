
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_modify (struct phy_device*,int,int,int) ;
 int phy_write (struct phy_device*,int,int) ;
 int vsc73xx_config_init (struct phy_device*) ;

__attribute__((used)) static int vsc739x_config_init(struct phy_device *phydev)
{





 phy_write(phydev, 0x1f, 0x2a30);
 phy_modify(phydev, 0x08, 0x0200, 0x0200);
 phy_write(phydev, 0x1f, 0x52b5);
 phy_write(phydev, 0x10, 0xb68a);
 phy_modify(phydev, 0x12, 0xff07, 0x0003);
 phy_modify(phydev, 0x11, 0x00ff, 0x00a2);
 phy_write(phydev, 0x10, 0x968a);
 phy_write(phydev, 0x1f, 0x2a30);
 phy_modify(phydev, 0x08, 0x0200, 0x0000);
 phy_write(phydev, 0x1f, 0x0000);

 phy_write(phydev, 0x1f, 0x0000);
 phy_write(phydev, 0x12, 0x0048);
 phy_write(phydev, 0x1f, 0x2a30);
 phy_modify(phydev, 0x16, 0x0fc0, 0x0240);
 phy_modify(phydev, 0x14, 0x6000, 0x4000);
 phy_write(phydev, 0x1f, 0x0001);
 phy_modify(phydev, 0x14, 0xe000, 0x6000);
 phy_write(phydev, 0x1f, 0x0000);

 vsc73xx_config_init(phydev);

 return 0;
}
