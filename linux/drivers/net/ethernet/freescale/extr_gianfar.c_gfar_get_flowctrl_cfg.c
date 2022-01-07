
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct phy_device {int advertising; scalar_t__ asym_pause; scalar_t__ pause; int duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct gfar_private {scalar_t__ rx_pause_en; scalar_t__ tx_pause_en; int pause_aneg_en; struct net_device* ndev; } ;


 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MACCFG1_RX_FLOW ;
 int MACCFG1_TX_FLOW ;
 int linkmode_adv_to_lcl_adv_t (int ) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

__attribute__((used)) static u32 gfar_get_flowctrl_cfg(struct gfar_private *priv)
{
 struct net_device *ndev = priv->ndev;
 struct phy_device *phydev = ndev->phydev;
 u32 val = 0;

 if (!phydev->duplex)
  return val;

 if (!priv->pause_aneg_en) {
  if (priv->tx_pause_en)
   val |= MACCFG1_TX_FLOW;
  if (priv->rx_pause_en)
   val |= MACCFG1_RX_FLOW;
 } else {
  u16 lcl_adv, rmt_adv;
  u8 flowctrl;

  rmt_adv = 0;
  if (phydev->pause)
   rmt_adv = LPA_PAUSE_CAP;
  if (phydev->asym_pause)
   rmt_adv |= LPA_PAUSE_ASYM;

  lcl_adv = linkmode_adv_to_lcl_adv_t(phydev->advertising);
  flowctrl = mii_resolve_flowctrl_fdx(lcl_adv, rmt_adv);
  if (flowctrl & FLOW_CTRL_TX)
   val |= MACCFG1_TX_FLOW;
  if (flowctrl & FLOW_CTRL_RX)
   val |= MACCFG1_RX_FLOW;
 }

 return val;
}
