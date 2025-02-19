
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_tof_range_req_ap_entry_v2 {int algo_type; int location_req; int enable_dyn_ack; int asap_mode; int retries_per_sample; scalar_t__ measure_type; int num_of_bursts; int samples_per_burst; int burst_period; int bssid; int ctrl_ch_position; int bandwidth; int channel_num; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_civicloc; scalar_t__ request_lci; int asap; int ftmr_retries; int num_bursts_exp; int ftms_per_burst; int burst_period; } ;
struct cfg80211_pmsr_request_peer {TYPE_1__ ftm; int addr; } ;


 int ETH_ALEN ;
 int IWL_MVM_FTM_INITIATOR_ALGO ;
 int IWL_MVM_FTM_INITIATOR_DYNACK ;
 int IWL_TOF_LOC_CIVIC ;
 int IWL_TOF_LOC_LCI ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_ftm_target_chandef (struct iwl_mvm*,struct cfg80211_pmsr_request_peer*,int *,int *,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
iwl_mvm_ftm_put_target_v2(struct iwl_mvm *mvm,
     struct cfg80211_pmsr_request_peer *peer,
     struct iwl_tof_range_req_ap_entry_v2 *target)
{
 int ret;

 ret = iwl_mvm_ftm_target_chandef(mvm, peer, &target->channel_num,
      &target->bandwidth,
      &target->ctrl_ch_position);
 if (ret)
  return ret;

 memcpy(target->bssid, peer->addr, ETH_ALEN);
 target->burst_period =
  cpu_to_le16(peer->ftm.burst_period);
 target->samples_per_burst = peer->ftm.ftms_per_burst;
 target->num_of_bursts = peer->ftm.num_bursts_exp;
 target->measure_type = 0;
 target->retries_per_sample = peer->ftm.ftmr_retries;
 target->asap_mode = peer->ftm.asap;
 target->enable_dyn_ack = IWL_MVM_FTM_INITIATOR_DYNACK;

 if (peer->ftm.request_lci)
  target->location_req |= IWL_TOF_LOC_LCI;
 if (peer->ftm.request_civicloc)
  target->location_req |= IWL_TOF_LOC_CIVIC;

 target->algo_type = IWL_MVM_FTM_INITIATOR_ALGO;

 return 0;
}
