
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
struct iwl_mvm_nssn_sync_data {int nssn; int baid; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_MVM_RELEASE_FROM_RSS_SYNC ;
 int iwl_mvm_release_frames_from_notif (struct iwl_mvm*,struct napi_struct*,int ,int ,int,int ) ;

__attribute__((used)) static void iwl_mvm_nssn_sync(struct iwl_mvm *mvm,
         struct napi_struct *napi, int queue,
         const struct iwl_mvm_nssn_sync_data *data)
{
 iwl_mvm_release_frames_from_notif(mvm, napi, data->baid,
       data->nssn, queue,
       IWL_MVM_RELEASE_FROM_RSS_SYNC);
}
