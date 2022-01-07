
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_rxon_context {int is_active; int mcast_queue; int * ac_to_queue; int always_active; struct ieee80211_vif* vif; } ;
struct iwl_priv {scalar_t__ iw_mode; int bt_traffic_load; TYPE_2__* lib; int mutex; } ;
struct ieee80211_vif {scalar_t__ type; int cab_queue; int * hw_queue; } ;
struct TYPE_4__ {TYPE_1__* bt_params; } ;
struct TYPE_3__ {scalar_t__ advanced_bt_coexist; } ;


 int IEEE80211_INVAL_HW_QUEUE ;
 int IEEE80211_NUM_ACS ;
 int IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int iwl_set_mode (struct iwl_priv*,struct iwl_rxon_context*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_setup_interface(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx)
{
 struct ieee80211_vif *vif = ctx->vif;
 int err, ac;

 lockdep_assert_held(&priv->mutex);






 priv->iw_mode = vif->type;

 ctx->is_active = 1;

 err = iwl_set_mode(priv, ctx);
 if (err) {
  if (!ctx->always_active)
   ctx->is_active = 0;
  return err;
 }

 if (priv->lib->bt_params && priv->lib->bt_params->advanced_bt_coexist &&
     vif->type == NL80211_IFTYPE_ADHOC) {





  priv->bt_traffic_load = IWL_BT_COEX_TRAFFIC_LOAD_HIGH;
 }


 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
  vif->hw_queue[ac] = ctx->ac_to_queue[ac];

 if (vif->type == NL80211_IFTYPE_AP)
  vif->cab_queue = ctx->mcast_queue;
 else
  vif->cab_queue = IEEE80211_INVAL_HW_QUEUE;

 return 0;
}
