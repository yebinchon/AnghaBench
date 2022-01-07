
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bw; scalar_t__ index; } ;
struct iwl_scale_tbl_info {TYPE_1__ rate; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef enum rs_action { ____Placeholder_rs_action } rs_action ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 scalar_t__ IWL_RATE_MCS_0_INDEX ;
 scalar_t__ IWL_RATE_MCS_1_INDEX ;
 scalar_t__ IWL_RATE_MCS_4_INDEX ;
 scalar_t__ IWL_RATE_MCS_5_INDEX ;
 scalar_t__ RATE_MCS_CHAN_WIDTH_20 ;
 scalar_t__ RATE_MCS_CHAN_WIDTH_80 ;
 int RS_ACTION_DOWNSCALE ;
 int RS_ACTION_STAY ;
 int RS_ACTION_UPSCALE ;
 int is_vht_siso (TYPE_1__*) ;
 scalar_t__ rs_bw_from_sta_bw (struct ieee80211_sta*) ;
 int rs_rate_scale_clear_tbl_windows (struct iwl_mvm*,struct iwl_scale_tbl_info*) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static bool rs_tweak_rate_tbl(struct iwl_mvm *mvm,
         struct ieee80211_sta *sta,
         struct iwl_lq_sta *lq_sta,
         struct iwl_scale_tbl_info *tbl,
         enum rs_action scale_action)
{
 if (rs_bw_from_sta_bw(sta) != RATE_MCS_CHAN_WIDTH_80)
  return 0;

 if (!is_vht_siso(&tbl->rate))
  return 0;

 if ((tbl->rate.bw == RATE_MCS_CHAN_WIDTH_80) &&
     (tbl->rate.index == IWL_RATE_MCS_0_INDEX) &&
     (scale_action == RS_ACTION_DOWNSCALE)) {
  tbl->rate.bw = RATE_MCS_CHAN_WIDTH_20;
  tbl->rate.index = IWL_RATE_MCS_4_INDEX;
  IWL_DEBUG_RATE(mvm, "Switch 80Mhz SISO MCS0 -> 20Mhz MCS4\n");
  goto tweaked;
 }






 if ((tbl->rate.bw == RATE_MCS_CHAN_WIDTH_20) &&
     (((tbl->rate.index == IWL_RATE_MCS_5_INDEX) &&
      (scale_action == RS_ACTION_STAY)) ||
      ((tbl->rate.index > IWL_RATE_MCS_5_INDEX) &&
       (scale_action == RS_ACTION_UPSCALE)))) {
  tbl->rate.bw = RATE_MCS_CHAN_WIDTH_80;
  tbl->rate.index = IWL_RATE_MCS_1_INDEX;
  IWL_DEBUG_RATE(mvm, "Switch 20Mhz SISO MCS5 -> 80Mhz MCS1\n");
  goto tweaked;
 }

 return 0;

tweaked:
 rs_set_expected_tpt_table(lq_sta, tbl);
 rs_rate_scale_clear_tbl_windows(mvm, tbl);
 return 1;
}
