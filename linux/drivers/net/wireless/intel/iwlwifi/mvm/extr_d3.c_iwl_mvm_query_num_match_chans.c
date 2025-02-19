
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_scan_offload_profile_match_v1 {int * matching_channels; } ;
struct iwl_scan_offload_profile_match {int * matching_channels; } ;
struct iwl_mvm_nd_query_results {scalar_t__ matches; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS ;
 int SCAN_OFFLOAD_MATCHING_CHANNELS_LEN ;
 int SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1 ;
 scalar_t__ fw_has_api (int *,int ) ;
 scalar_t__ hweight8 (int ) ;

__attribute__((used)) static int iwl_mvm_query_num_match_chans(struct iwl_mvm *mvm,
      struct iwl_mvm_nd_query_results *query,
      int idx)
{
 int n_chans = 0, i;

 if (fw_has_api(&mvm->fw->ucode_capa,
         IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS)) {
  struct iwl_scan_offload_profile_match *matches =
   (struct iwl_scan_offload_profile_match *)query->matches;

  for (i = 0; i < SCAN_OFFLOAD_MATCHING_CHANNELS_LEN; i++)
   n_chans += hweight8(matches[idx].matching_channels[i]);
 } else {
  struct iwl_scan_offload_profile_match_v1 *matches =
   (struct iwl_scan_offload_profile_match_v1 *)query->matches;

  for (i = 0; i < SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1; i++)
   n_chans += hweight8(matches[idx].matching_channels[i]);
 }

 return n_chans;
}
