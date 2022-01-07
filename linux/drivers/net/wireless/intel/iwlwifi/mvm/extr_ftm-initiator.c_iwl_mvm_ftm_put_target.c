
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_tof_range_req_ap_entry {int initiator_ap_flags; int ftmr_max_retries; int num_of_bursts; int samples_per_burst; int burst_period; int bssid; int ctrl_ch_position; int bandwidth; int channel_num; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_civicloc; scalar_t__ request_lci; scalar_t__ asap; int ftmr_retries; int num_bursts_exp; int ftms_per_burst; int burst_period; } ;
struct cfg80211_pmsr_request_peer {TYPE_1__ ftm; int addr; } ;


 int ALGO_FFT ;
 int ALGO_LR ;
 int ASAP ;
 int CIVIC_REQUEST ;
 int DYN_ACK ;
 int ETH_ALEN ;
 int FTM_PUT_FLAG (int ) ;
 scalar_t__ IWL_MVM_FTM_INITIATOR_ALGO ;
 scalar_t__ IWL_MVM_FTM_INITIATOR_DYNACK ;
 scalar_t__ IWL_TOF_ALGO_TYPE_FFT ;
 scalar_t__ IWL_TOF_ALGO_TYPE_LINEAR_REG ;
 int LCI_REQUEST ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_ftm_target_chandef (struct iwl_mvm*,struct cfg80211_pmsr_request_peer*,int *,int *,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int iwl_mvm_ftm_put_target(struct iwl_mvm *mvm,
      struct cfg80211_pmsr_request_peer *peer,
      struct iwl_tof_range_req_ap_entry *target)
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
 target->ftmr_max_retries = peer->ftm.ftmr_retries;
 target->initiator_ap_flags = cpu_to_le32(0);

 if (peer->ftm.asap)
  FTM_PUT_FLAG(ASAP);

 if (peer->ftm.request_lci)
  FTM_PUT_FLAG(LCI_REQUEST);

 if (peer->ftm.request_civicloc)
  FTM_PUT_FLAG(CIVIC_REQUEST);

 if (IWL_MVM_FTM_INITIATOR_DYNACK)
  FTM_PUT_FLAG(DYN_ACK);

 if (IWL_MVM_FTM_INITIATOR_ALGO == IWL_TOF_ALGO_TYPE_LINEAR_REG)
  FTM_PUT_FLAG(ALGO_LR);
 else if (IWL_MVM_FTM_INITIATOR_ALGO == IWL_TOF_ALGO_TYPE_FFT)
  FTM_PUT_FLAG(ALGO_FFT);

 return 0;
}
