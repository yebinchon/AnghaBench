
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* req; int req_wdev; int * responses; } ;
struct iwl_mvm {TYPE_3__ ftm_initiator; int mutex; } ;
struct TYPE_7__ {int burst_index; } ;
struct cfg80211_pmsr_result {int final; TYPE_2__ ftm; int addr; int type; int host_time; int status; } ;
struct TYPE_9__ {int n_peers; TYPE_1__* peers; } ;
struct TYPE_6__ {int addr; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int NL80211_PMSR_STATUS_FAILURE ;
 int NL80211_PMSR_TYPE_FTM ;
 int cfg80211_pmsr_complete (int ,TYPE_4__*,int ) ;
 int cfg80211_pmsr_report (int ,TYPE_4__*,struct cfg80211_pmsr_result*,int ) ;
 int iwl_mvm_ftm_reset (struct iwl_mvm*) ;
 int ktime_get_boottime_ns () ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int ,int ) ;

void iwl_mvm_ftm_restart(struct iwl_mvm *mvm)
{
 struct cfg80211_pmsr_result result = {
  .status = NL80211_PMSR_STATUS_FAILURE,
  .final = 1,
  .host_time = ktime_get_boottime_ns(),
  .type = NL80211_PMSR_TYPE_FTM,
 };
 int i;

 lockdep_assert_held(&mvm->mutex);

 if (!mvm->ftm_initiator.req)
  return;

 for (i = 0; i < mvm->ftm_initiator.req->n_peers; i++) {
  memcpy(result.addr, mvm->ftm_initiator.req->peers[i].addr,
         ETH_ALEN);
  result.ftm.burst_index = mvm->ftm_initiator.responses[i];

  cfg80211_pmsr_report(mvm->ftm_initiator.req_wdev,
         mvm->ftm_initiator.req,
         &result, GFP_KERNEL);
 }

 cfg80211_pmsr_complete(mvm->ftm_initiator.req_wdev,
          mvm->ftm_initiator.req, GFP_KERNEL);
 iwl_mvm_ftm_reset(mvm);
}
