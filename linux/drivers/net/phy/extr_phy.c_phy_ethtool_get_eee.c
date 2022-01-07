
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int drv; } ;
struct ethtool_eee {int advertised; int eee_enabled; int lp_advertised; int eee_active; int supported; } ;


 int EIO ;
 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_ABLE ;
 void* mmd_eee_adv_to_ethtool_adv_t (int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int phy_ethtool_get_eee(struct phy_device *phydev, struct ethtool_eee *data)
{
 int val;

 if (!phydev->drv)
  return -EIO;


 val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
 if (val < 0)
  return val;
 data->supported = mmd_eee_cap_to_ethtool_sup_t(val);


 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
 if (val < 0)
  return val;
 data->advertised = mmd_eee_adv_to_ethtool_adv_t(val);
 data->eee_enabled = !!data->advertised;


 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
 if (val < 0)
  return val;
 data->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(val);

 data->eee_active = !!(data->advertised & data->lp_advertised);

 return 0;
}
