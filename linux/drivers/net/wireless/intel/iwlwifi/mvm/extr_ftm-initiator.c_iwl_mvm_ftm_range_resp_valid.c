
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {TYPE_2__* req; } ;
struct iwl_mvm {TYPE_1__ ftm_initiator; int mutex; } ;
struct TYPE_4__ {scalar_t__ n_peers; scalar_t__ cookie; } ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_ftm_range_resp_valid(struct iwl_mvm *mvm, u8 request_id,
     u8 num_of_aps)
{
 lockdep_assert_held(&mvm->mutex);

 if (request_id != (u8)mvm->ftm_initiator.req->cookie) {
  IWL_ERR(mvm, "Request ID mismatch, got %u, active %u\n",
   request_id, (u8)mvm->ftm_initiator.req->cookie);
  return -EINVAL;
 }

 if (num_of_aps > mvm->ftm_initiator.req->n_peers) {
  IWL_ERR(mvm, "FTM range response invalid\n");
  return -EINVAL;
 }

 return 0;
}
