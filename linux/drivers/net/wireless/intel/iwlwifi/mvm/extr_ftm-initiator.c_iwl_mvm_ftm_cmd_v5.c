
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_tof_range_req_cmd_v5 {int req_timeout; int macaddr_random; int range_req_bssid; int * macaddr_mask; int macaddr_template; int num_of_ap; int request_id; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int bssid; scalar_t__ assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct cfg80211_pmsr_request {int timeout; int * mac_addr_mask; int mac_addr; int n_peers; int cookie; } ;


 int DIV_ROUND_UP (int,int) ;
 int ETH_ALEN ;
 int eth_broadcast_addr (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void iwl_mvm_ftm_cmd_v5(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
          struct iwl_tof_range_req_cmd_v5 *cmd,
          struct cfg80211_pmsr_request *req)
{
 int i;

 cmd->request_id = req->cookie;
 cmd->num_of_ap = req->n_peers;


 if (!req->timeout || req->timeout > 255 * 100)
  cmd->req_timeout = 255;
 else
  cmd->req_timeout = DIV_ROUND_UP(req->timeout, 100);





 cmd->macaddr_random = 1;
 memcpy(cmd->macaddr_template, req->mac_addr, ETH_ALEN);
 for (i = 0; i < ETH_ALEN; i++)
  cmd->macaddr_mask[i] = ~req->mac_addr_mask[i];

 if (vif->bss_conf.assoc)
  memcpy(cmd->range_req_bssid, vif->bss_conf.bssid, ETH_ALEN);
 else
  eth_broadcast_addr(cmd->range_req_bssid);
}
