
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lbtf_private {struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; scalar_t__ addr; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;


 int EOPNOTSUPP ;
 int LBTF_AP_MODE ;
 int LBTF_DEB_MACOPS ;
 int LBTF_STA_MODE ;



 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_set_mac_address (struct lbtf_private*,int *) ;
 int lbtf_set_mode (struct lbtf_private*,int ) ;

__attribute__((used)) static int lbtf_op_add_interface(struct ieee80211_hw *hw,
   struct ieee80211_vif *vif)
{
 struct lbtf_private *priv = hw->priv;
 lbtf_deb_enter(LBTF_DEB_MACOPS);
 if (priv->vif != ((void*)0))
  return -EOPNOTSUPP;

 priv->vif = vif;
 switch (vif->type) {
 case 129:
 case 130:
  lbtf_set_mode(priv, LBTF_AP_MODE);
  break;
 case 128:
  lbtf_set_mode(priv, LBTF_STA_MODE);
  break;
 default:
  priv->vif = ((void*)0);
  return -EOPNOTSUPP;
 }
 lbtf_set_mac_address(priv, (u8 *) vif->addr);
 lbtf_deb_leave(LBTF_DEB_MACOPS);
 return 0;
}
