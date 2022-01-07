
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_KSZ9031RN_FLP_BURST_TX_HI ;
 int MII_KSZ9031RN_FLP_BURST_TX_LO ;
 int genphy_restart_aneg (struct phy_device*) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int ksz9031_center_flp_timing(struct phy_device *phydev)
{
 int result;

 result = phy_write_mmd(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_HI,
          0x0006);
 if (result)
  return result;

 result = phy_write_mmd(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_LO,
          0x1A80);
 if (result)
  return result;

 return genphy_restart_aneg(phydev);
}
