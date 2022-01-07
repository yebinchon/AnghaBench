
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_probe_resp_data_notif {int csa_counter; int noa_active; int mac_id; } ;
struct TYPE_4__ {int len_low; } ;
struct TYPE_6__ {TYPE_1__ noa_attr; } ;
struct iwl_probe_resp_data {int noa_len; TYPE_3__ notif; } ;
struct iwl_mvm_vif {int probe_resp_data; TYPE_2__* mvm; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_vendor_ie {int dummy; } ;
struct ieee80211_p2p_noa_desc {int dummy; } ;
struct TYPE_5__ {int mutex; } ;


 int GFP_KERNEL ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int ,int) ;
 int IWL_PROBE_RESP_DATA_NO_CSA ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_csa_set_counter (struct ieee80211_vif*,int) ;
 struct ieee80211_vif* iwl_mvm_rcu_dereference_vif_id (struct iwl_mvm*,int ,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int kfree_rcu (struct iwl_probe_resp_data*,int ) ;
 struct iwl_probe_resp_data* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int lockdep_is_held (int *) ;
 int memcpy (TYPE_3__*,struct iwl_probe_resp_data_notif*,int) ;
 int rcu_assign_pointer (int ,struct iwl_probe_resp_data*) ;
 struct iwl_probe_resp_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_probe_resp_data_notif(struct iwl_mvm *mvm,
       struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_probe_resp_data_notif *notif = (void *)pkt->data;
 struct iwl_probe_resp_data *old_data, *new_data;
 int len = iwl_rx_packet_payload_len(pkt);
 u32 id = le32_to_cpu(notif->mac_id);
 struct ieee80211_vif *vif;
 struct iwl_mvm_vif *mvmvif;

 if (WARN_ON_ONCE(len < sizeof(*notif)))
  return;

 IWL_DEBUG_INFO(mvm, "Probe response data notif: noa %d, csa %d\n",
         notif->noa_active, notif->csa_counter);

 vif = iwl_mvm_rcu_dereference_vif_id(mvm, id, 0);
 if (!vif)
  return;

 mvmvif = iwl_mvm_vif_from_mac80211(vif);

 new_data = kzalloc(sizeof(*new_data), GFP_KERNEL);
 if (!new_data)
  return;

 memcpy(&new_data->notif, notif, sizeof(new_data->notif));


 new_data->noa_len = sizeof(struct ieee80211_vendor_ie) +
       sizeof(new_data->notif.noa_attr) - 1;





 if (new_data->notif.noa_attr.len_low ==
     sizeof(struct ieee80211_p2p_noa_desc) + 2)
  new_data->noa_len -= sizeof(struct ieee80211_p2p_noa_desc);

 old_data = rcu_dereference_protected(mvmvif->probe_resp_data,
     lockdep_is_held(&mvmvif->mvm->mutex));
 rcu_assign_pointer(mvmvif->probe_resp_data, new_data);

 if (old_data)
  kfree_rcu(old_data, rcu_head);

 if (notif->csa_counter != IWL_PROBE_RESP_DATA_NO_CSA &&
     notif->csa_counter >= 1)
  ieee80211_csa_set_counter(vif, notif->csa_counter);
}
