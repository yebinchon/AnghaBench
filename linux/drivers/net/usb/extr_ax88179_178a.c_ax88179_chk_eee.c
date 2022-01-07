
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int mii; scalar_t__ data; } ;
struct ethtool_cmd {int duplex; scalar_t__ speed; int cmd; } ;
struct ax88179_data {int eee_active; } ;


 int DUPLEX_FULL ;
 int ETHTOOL_GSET ;
 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_ABLE ;
 scalar_t__ SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int ax88179_phy_read_mmd_indirect (struct usbnet*,int ,int ) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 int mmd_eee_adv_to_ethtool_adv_t (int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;

__attribute__((used)) static int ax88179_chk_eee(struct usbnet *dev)
{
 struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };
 struct ax88179_data *priv = (struct ax88179_data *)dev->data;

 mii_ethtool_gset(&dev->mii, &ecmd);

 if (ecmd.duplex & DUPLEX_FULL) {
  int eee_lp, eee_cap, eee_adv;
  u32 lp, cap, adv, supported = 0;

  eee_cap = ax88179_phy_read_mmd_indirect(dev,
       MDIO_PCS_EEE_ABLE,
       MDIO_MMD_PCS);
  if (eee_cap < 0) {
   priv->eee_active = 0;
   return 0;
  }

  cap = mmd_eee_cap_to_ethtool_sup_t(eee_cap);
  if (!cap) {
   priv->eee_active = 0;
   return 0;
  }

  eee_lp = ax88179_phy_read_mmd_indirect(dev,
             MDIO_AN_EEE_LPABLE,
             MDIO_MMD_AN);
  if (eee_lp < 0) {
   priv->eee_active = 0;
   return 0;
  }

  eee_adv = ax88179_phy_read_mmd_indirect(dev,
       MDIO_AN_EEE_ADV,
       MDIO_MMD_AN);

  if (eee_adv < 0) {
   priv->eee_active = 0;
   return 0;
  }

  adv = mmd_eee_adv_to_ethtool_adv_t(eee_adv);
  lp = mmd_eee_adv_to_ethtool_adv_t(eee_lp);
  supported = (ecmd.speed == SPEED_1000) ?
        SUPPORTED_1000baseT_Full :
        SUPPORTED_100baseT_Full;

  if (!(lp & adv & supported)) {
   priv->eee_active = 0;
   return 0;
  }

  priv->eee_active = 1;
  return 1;
 }

 priv->eee_active = 0;
 return 0;
}
