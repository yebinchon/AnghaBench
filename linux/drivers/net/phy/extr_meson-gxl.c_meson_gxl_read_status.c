
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BANK_WOL ;
 int EXPANSION_NWAY ;
 int LPA_LPACK ;
 int LPI_STATUS ;
 int LPI_STATUS_RSV12 ;
 int MII_EXPANSION ;
 int MII_LPA ;
 int genphy_aneg_done (struct phy_device*) ;
 int genphy_read_status (struct phy_device*) ;
 int genphy_restart_aneg (struct phy_device*) ;
 int meson_gxl_read_reg (struct phy_device*,int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_dbg (struct phy_device*,char*) ;

__attribute__((used)) static int meson_gxl_read_status(struct phy_device *phydev)
{
 int ret, wol, lpa, exp;

 if (phydev->autoneg == AUTONEG_ENABLE) {
  ret = genphy_aneg_done(phydev);
  if (ret < 0)
   return ret;
  else if (!ret)
   goto read_status_continue;


  wol = meson_gxl_read_reg(phydev, BANK_WOL, LPI_STATUS);
  if (wol < 0)
   return wol;

  lpa = phy_read(phydev, MII_LPA);
  if (lpa < 0)
   return lpa;

  exp = phy_read(phydev, MII_EXPANSION);
  if (exp < 0)
   return exp;

  if (!(wol & LPI_STATUS_RSV12) ||
      ((exp & EXPANSION_NWAY) && !(lpa & LPA_LPACK))) {

   phydev_dbg(phydev, "LPA corruption - aneg restart\n");
   return genphy_restart_aneg(phydev);
  }
 }

read_status_continue:
 return genphy_read_status(phydev);
}
