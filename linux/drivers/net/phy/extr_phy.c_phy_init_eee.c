
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ duplex; int speed; int drv; } ;


 scalar_t__ DUPLEX_FULL ;
 int EIO ;
 int EPROTONOSUPPORT ;
 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_CTRL1_CLKSTOP_EN ;
 int MDIO_PCS_EEE_ABLE ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int adv ;
 int common ;
 int linkmode_and (int ,int ,int ) ;
 int lp ;
 int mmd_eee_adv_to_linkmode (int ,int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;
 int phy_check_valid (int ,scalar_t__,int ) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_read_status (struct phy_device*) ;
 int phy_set_bits_mmd (struct phy_device*,int ,int ,int ) ;

int phy_init_eee(struct phy_device *phydev, bool clk_stop_enable)
{
 if (!phydev->drv)
  return -EIO;



 if (phydev->duplex == DUPLEX_FULL) {
  __ETHTOOL_DECLARE_LINK_MODE_MASK(common);
  __ETHTOOL_DECLARE_LINK_MODE_MASK(lp);
  __ETHTOOL_DECLARE_LINK_MODE_MASK(adv);
  int eee_lp, eee_cap, eee_adv;
  int status;
  u32 cap;


  status = phy_read_status(phydev);
  if (status)
   return status;


  eee_cap = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
  if (eee_cap <= 0)
   goto eee_exit_err;

  cap = mmd_eee_cap_to_ethtool_sup_t(eee_cap);
  if (!cap)
   goto eee_exit_err;




  eee_lp = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
  if (eee_lp <= 0)
   goto eee_exit_err;

  eee_adv = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
  if (eee_adv <= 0)
   goto eee_exit_err;

  mmd_eee_adv_to_linkmode(adv, eee_adv);
  mmd_eee_adv_to_linkmode(lp, eee_lp);
  linkmode_and(common, adv, lp);

  if (!phy_check_valid(phydev->speed, phydev->duplex, common))
   goto eee_exit_err;

  if (clk_stop_enable)



   phy_set_bits_mmd(phydev, MDIO_MMD_PCS, MDIO_CTRL1,
      MDIO_PCS_CTRL1_CLKSTOP_EN);

  return 0;
 }
eee_exit_err:
 return -EPROTONOSUPPORT;
}
