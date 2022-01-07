
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int dnet_phy_marvell_fixup(struct phy_device *phydev)
{
 return phy_write(phydev, 0x18, 0x4148);
}
