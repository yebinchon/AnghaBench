
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_scan_offload_profile_match_v1 {int* matching_channels; } ;
struct iwl_scan_offload_profile_match {int* matching_channels; } ;
struct iwl_mvm_nd_query_results {scalar_t__ matches; } ;
struct iwl_mvm {TYPE_2__** nd_channels; TYPE_1__* fw; } ;
struct cfg80211_wowlan_nd_match {int n_channels; int * channels; } ;
struct TYPE_4__ {int center_freq; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int BIT (int) ;
 int IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS ;
 int SCAN_OFFLOAD_MATCHING_CHANNELS_LEN ;
 int SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1 ;
 scalar_t__ fw_has_api (int *,int ) ;

__attribute__((used)) static void iwl_mvm_query_set_freqs(struct iwl_mvm *mvm,
        struct iwl_mvm_nd_query_results *query,
        struct cfg80211_wowlan_nd_match *match,
        int idx)
{
 int i;

 if (fw_has_api(&mvm->fw->ucode_capa,
         IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS)) {
  struct iwl_scan_offload_profile_match *matches =
   (struct iwl_scan_offload_profile_match *)query->matches;

  for (i = 0; i < SCAN_OFFLOAD_MATCHING_CHANNELS_LEN * 8; i++)
   if (matches[idx].matching_channels[i / 8] & (BIT(i % 8)))
    match->channels[match->n_channels++] =
     mvm->nd_channels[i]->center_freq;
 } else {
  struct iwl_scan_offload_profile_match_v1 *matches =
   (struct iwl_scan_offload_profile_match_v1 *)query->matches;

  for (i = 0; i < SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1 * 8; i++)
   if (matches[idx].matching_channels[i / 8] & (BIT(i % 8)))
    match->channels[match->n_channels++] =
     mvm->nd_channels[i]->center_freq;
 }
}
