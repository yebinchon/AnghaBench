
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int mac_control; int radioon; int capability; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;


 int CMD_ACT_MAC_RX_ON ;
 int CMD_ACT_MAC_TX_ON ;
 int LBTF_DEB_MACOPS ;
 int RADIO_ON ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_set_mac_control (struct lbtf_private*) ;
 int lbtf_set_radio_control (struct lbtf_private*) ;

__attribute__((used)) static int lbtf_op_start(struct ieee80211_hw *hw)
{
 struct lbtf_private *priv = hw->priv;

 lbtf_deb_enter(LBTF_DEB_MACOPS);

 priv->capability = WLAN_CAPABILITY_SHORT_PREAMBLE;
 priv->radioon = RADIO_ON;
 priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
 lbtf_set_mac_control(priv);
 lbtf_set_radio_control(priv);

 lbtf_deb_leave(LBTF_DEB_MACOPS);
 return 0;
}
