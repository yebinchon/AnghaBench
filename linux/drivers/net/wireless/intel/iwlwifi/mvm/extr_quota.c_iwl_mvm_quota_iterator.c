
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct iwl_mvm_vif {scalar_t__ dbgfs_quota_min; TYPE_2__* phy_ctxt; int monitor_active; int ap_ibss_active; } ;
struct iwl_mvm_quota_iterator_data {scalar_t__* colors; int* low_latency; int n_low_latency_bindings; int * dbgfs_min; int * n_interfaces; struct ieee80211_vif* disabled_vif; } ;
struct TYPE_3__ {int assoc; } ;
struct ieee80211_vif {int type; TYPE_1__ bss_conf; } ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ color; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ MAX_BINDINGS ;





 scalar_t__ NUM_PHY_CTX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 scalar_t__ iwl_mvm_vif_low_latency (struct iwl_mvm_vif*) ;
 int max (int ,scalar_t__) ;

__attribute__((used)) static void iwl_mvm_quota_iterator(void *_data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct iwl_mvm_quota_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 u16 id;


 if (vif == data->disabled_vif)
  return;

 if (!mvmvif->phy_ctxt)
  return;


 id = mvmvif->phy_ctxt->id;


 BUILD_BUG_ON(NUM_PHY_CTX > MAX_BINDINGS);

 if (WARN_ON_ONCE(id >= MAX_BINDINGS))
  return;

 switch (vif->type) {
 case 128:
  if (vif->bss_conf.assoc)
   break;
  return;
 case 131:
 case 132:
  if (mvmvif->ap_ibss_active)
   break;
  return;
 case 130:
  if (mvmvif->monitor_active)
   break;
  return;
 case 129:
  return;
 default:
  WARN_ON_ONCE(1);
  return;
 }

 if (data->colors[id] < 0)
  data->colors[id] = mvmvif->phy_ctxt->color;
 else
  WARN_ON_ONCE(data->colors[id] != mvmvif->phy_ctxt->color);

 data->n_interfaces[id]++;







 if (iwl_mvm_vif_low_latency(mvmvif) && !data->low_latency[id]) {
  data->n_low_latency_bindings++;
  data->low_latency[id] = 1;
 }
}
