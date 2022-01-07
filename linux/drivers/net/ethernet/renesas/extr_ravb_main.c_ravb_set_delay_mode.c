
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {scalar_t__ phy_interface; } ;
struct net_device {int dummy; } ;


 int APSR ;
 int APSR_DM ;
 int APSR_DM_RDM ;
 int APSR_DM_TDM ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int WARN (int ,char*,int ) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int phy_modes (scalar_t__) ;
 int ravb_delay_mode_quirk_match ;
 int ravb_modify (struct net_device*,int ,int ,int) ;
 int soc_device_match (int ) ;

__attribute__((used)) static void ravb_set_delay_mode(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int set = 0;

 if (priv->phy_interface == PHY_INTERFACE_MODE_RGMII_ID ||
     priv->phy_interface == PHY_INTERFACE_MODE_RGMII_RXID)
  set |= APSR_DM_RDM;

 if (priv->phy_interface == PHY_INTERFACE_MODE_RGMII_ID ||
     priv->phy_interface == PHY_INTERFACE_MODE_RGMII_TXID) {
  if (!WARN(soc_device_match(ravb_delay_mode_quirk_match),
     "phy-mode %s requires TX clock internal delay mode which is not supported by this hardware revision. Please update device tree",
     phy_modes(priv->phy_interface)))
   set |= APSR_DM_TDM;
 }

 ravb_modify(ndev, APSR, APSR_DM, set);
}
