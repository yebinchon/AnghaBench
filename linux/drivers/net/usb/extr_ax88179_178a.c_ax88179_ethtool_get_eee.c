
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct ethtool_eee {void* lp_advertised; void* advertised; int supported; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_ABLE ;
 int ax88179_phy_read_mmd_indirect (struct usbnet*,int ,int ) ;
 void* mmd_eee_adv_to_ethtool_adv_t (int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;

__attribute__((used)) static int
ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_eee *data)
{
 int val;


 val = ax88179_phy_read_mmd_indirect(dev, MDIO_PCS_EEE_ABLE,
         MDIO_MMD_PCS);
 if (val < 0)
  return val;
 data->supported = mmd_eee_cap_to_ethtool_sup_t(val);


 val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_ADV,
         MDIO_MMD_AN);
 if (val < 0)
  return val;
 data->advertised = mmd_eee_adv_to_ethtool_adv_t(val);


 val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_LPABLE,
         MDIO_MMD_AN);
 if (val < 0)
  return val;
 data->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(val);

 return 0;
}
