
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int type; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int index; } ;
struct ath9k_htc_target_vif {int index; int myaddr; } ;
struct ath9k_htc_priv {int vif_slot; scalar_t__ num_ap_vif; int rearm_ani; int mutex; int hw; struct ieee80211_vif* csa_vif; int nvifs; int ah; } ;


 int CONFIG ;
 int DEC_VIF (struct ath9k_htc_priv*,int ) ;
 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_vif*) ;
 int WMI_VAP_REMOVE_CMDID ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_remove_bslot (struct ath9k_htc_priv*,struct ieee80211_vif*) ;
 int ath9k_htc_remove_station (struct ath9k_htc_priv*,struct ieee80211_vif*,int *) ;
 int ath9k_htc_set_mac_bssid_mask (struct ath9k_htc_priv*,struct ieee80211_vif*) ;
 int ath9k_htc_set_opmode (struct ath9k_htc_priv*) ;
 int ath9k_htc_stop_ani (struct ath9k_htc_priv*) ;
 int ath9k_htc_vif_iter ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 int ath_err (struct ath_common*,char*,int) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath9k_htc_priv*) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct ath9k_htc_target_vif*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_htc_remove_interface(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
 struct ath9k_htc_target_vif hvif;
 int ret = 0;
 u8 cmd_rsp;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);

 memset(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
 memcpy(&hvif.myaddr, vif->addr, ETH_ALEN);
 hvif.index = avp->index;
 WMI_CMD_BUF(WMI_VAP_REMOVE_CMDID, &hvif);
 if (ret) {
  ath_err(common, "Unable to remove interface at idx: %d\n",
   avp->index);
 }
 priv->nvifs--;
 priv->vif_slot &= ~(1 << avp->index);

 if (priv->csa_vif == vif)
  priv->csa_vif = ((void*)0);

 ath9k_htc_remove_station(priv, vif, ((void*)0));

 DEC_VIF(priv, vif->type);

 if ((vif->type == NL80211_IFTYPE_AP) ||
      vif->type == NL80211_IFTYPE_MESH_POINT ||
     (vif->type == NL80211_IFTYPE_ADHOC))
  ath9k_htc_remove_bslot(priv, vif);

 ath9k_htc_set_opmode(priv);

 ath9k_htc_set_mac_bssid_mask(priv, vif);




 if ((vif->type == NL80211_IFTYPE_AP) && (priv->num_ap_vif == 0)) {
  priv->rearm_ani = 0;
  ieee80211_iterate_active_interfaces_atomic(
   priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
   ath9k_htc_vif_iter, priv);
  if (!priv->rearm_ani)
   ath9k_htc_stop_ani(priv);
 }

 ath_dbg(common, CONFIG, "Detach Interface at idx: %d\n", avp->index);

 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
