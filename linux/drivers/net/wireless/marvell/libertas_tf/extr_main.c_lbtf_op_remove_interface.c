
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {TYPE_1__* vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int LBTF_DEB_MACOPS ;
 int LBTF_PASSIVE_MODE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int lbtf_beacon_ctrl (struct lbtf_private*,int ,int ) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_set_bssid (struct lbtf_private*,int ,int *) ;
 int lbtf_set_mode (struct lbtf_private*,int ) ;

__attribute__((used)) static void lbtf_op_remove_interface(struct ieee80211_hw *hw,
   struct ieee80211_vif *vif)
{
 struct lbtf_private *priv = hw->priv;
 lbtf_deb_enter(LBTF_DEB_MACOPS);

 if (priv->vif->type == NL80211_IFTYPE_AP ||
     priv->vif->type == NL80211_IFTYPE_MESH_POINT)
  lbtf_beacon_ctrl(priv, 0, 0);
 lbtf_set_mode(priv, LBTF_PASSIVE_MODE);
 lbtf_set_bssid(priv, 0, ((void*)0));
 priv->vif = ((void*)0);
 lbtf_deb_leave(LBTF_DEB_MACOPS);
}
