
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_tof_range_req_cmd {int num_of_ap; void* tsf_mac_id; int range_req_bssid; int * macaddr_mask; int macaddr_template; void* req_timeout_ms; int request_id; void* initiator_flags; } ;
struct iwl_mvm_vif {int id; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_3__ {int bssid; scalar_t__ assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct cfg80211_pmsr_request {int n_peers; int timeout; TYPE_2__* peers; int * mac_addr_mask; int mac_addr; int cookie; } ;
struct TYPE_4__ {scalar_t__ report_ap_tsf; } ;


 int ETH_ALEN ;
 int IWL_TOF_INITIATOR_FLAGS_MACADDR_RANDOM ;
 int IWL_TOF_INITIATOR_FLAGS_NON_ASAP_SUPPORT ;
 void* cpu_to_le32 (int) ;
 int eth_broadcast_addr (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void iwl_mvm_ftm_cmd(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
       struct iwl_tof_range_req_cmd *cmd,
       struct cfg80211_pmsr_request *req)
{
 int i;

 cmd->initiator_flags =
  cpu_to_le32(IWL_TOF_INITIATOR_FLAGS_MACADDR_RANDOM |
       IWL_TOF_INITIATOR_FLAGS_NON_ASAP_SUPPORT);
 cmd->request_id = req->cookie;
 cmd->num_of_ap = req->n_peers;





 if (req->timeout)
  cmd->req_timeout_ms = cpu_to_le32(req->timeout);
 else
  cmd->req_timeout_ms = cpu_to_le32(0xfffff);

 memcpy(cmd->macaddr_template, req->mac_addr, ETH_ALEN);
 for (i = 0; i < ETH_ALEN; i++)
  cmd->macaddr_mask[i] = ~req->mac_addr_mask[i];

 if (vif->bss_conf.assoc) {
  memcpy(cmd->range_req_bssid, vif->bss_conf.bssid, ETH_ALEN);


  for (i = 0; i < req->n_peers; i++) {
   if (req->peers[i].report_ap_tsf) {
    struct iwl_mvm_vif *mvmvif =
     iwl_mvm_vif_from_mac80211(vif);

    cmd->tsf_mac_id = cpu_to_le32(mvmvif->id);
    return;
   }
  }
 } else {
  eth_broadcast_addr(cmd->range_req_bssid);
 }


 cmd->tsf_mac_id = cpu_to_le32(0xff);
}
