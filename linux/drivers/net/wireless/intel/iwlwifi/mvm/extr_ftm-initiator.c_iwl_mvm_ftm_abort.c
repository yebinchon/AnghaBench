
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_tof_range_abort_cmd {int request_id; } ;
struct TYPE_2__ {struct cfg80211_pmsr_request* req; } ;
struct iwl_mvm {TYPE_1__ ftm_initiator; int mutex; } ;
struct cfg80211_pmsr_request {int cookie; } ;
typedef int cmd ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 int LOCATION_GROUP ;
 int TOF_RANGE_ABORT_CMD ;
 int iwl_cmd_id (int ,int ,int ) ;
 scalar_t__ iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_tof_range_abort_cmd*) ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_ftm_abort(struct iwl_mvm *mvm, struct cfg80211_pmsr_request *req)
{
 struct iwl_tof_range_abort_cmd cmd = {
  .request_id = req->cookie,
 };

 lockdep_assert_held(&mvm->mutex);

 if (req != mvm->ftm_initiator.req)
  return;

 if (iwl_mvm_send_cmd_pdu(mvm, iwl_cmd_id(TOF_RANGE_ABORT_CMD,
       LOCATION_GROUP, 0),
     0, sizeof(cmd), &cmd))
  IWL_ERR(mvm, "failed to abort FTM process\n");
}
