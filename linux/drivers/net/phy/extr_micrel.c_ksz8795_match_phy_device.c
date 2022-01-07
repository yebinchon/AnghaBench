
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int PHY_ID_KSZ87XX ;
 int ksz8051_ksz8795_match_phy_device (struct phy_device*,int ) ;

__attribute__((used)) static int ksz8795_match_phy_device(struct phy_device *phydev)
{
 return ksz8051_ksz8795_match_phy_device(phydev, PHY_ID_KSZ87XX);
}
