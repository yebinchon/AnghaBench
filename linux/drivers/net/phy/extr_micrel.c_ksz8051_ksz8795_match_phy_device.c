
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int const phy_id; } ;


 int BMSR_ERCAP ;
 int const MICREL_PHY_ID_MASK ;
 int MII_BMSR ;
 int const PHY_ID_KSZ8051 ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int ksz8051_ksz8795_match_phy_device(struct phy_device *phydev,
         const u32 ksz_phy_id)
{
 int ret;

 if ((phydev->phy_id & MICREL_PHY_ID_MASK) != ksz_phy_id)
  return 0;

 ret = phy_read(phydev, MII_BMSR);
 if (ret < 0)
  return ret;






 ret &= BMSR_ERCAP;
 if (ksz_phy_id == PHY_ID_KSZ8051)
  return ret;
 else
  return !ret;
}
