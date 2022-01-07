
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct survey_info {int filled; int noise; } ;
struct chan_info_params {int cmd_flags; int cycle_count; int rx_clear_count; int noise_floor; int freq; } ;
struct ath10k {int ch_info_can_report_survey; int survey_last_cycle_count; int survey_last_rx_clear_count; struct survey_info* survey; } ;


 int ARRAY_SIZE (struct survey_info*) ;
 int SURVEY_INFO_NOISE_DBM ;
 int WMI_CHAN_INFO_FLAG_COMPLETE ;
 int WMI_CHAN_INFO_FLAG_PRE_COMPLETE ;
 int ath10k_hw_fill_survey_time (struct ath10k*,struct survey_info*,int ,int ,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int freq_to_idx (struct ath10k*,int ) ;

__attribute__((used)) static void ath10k_wmi_event_chan_info_paired(struct ath10k *ar,
           struct chan_info_params *params)
{
 struct survey_info *survey;
 int idx;

 idx = freq_to_idx(ar, params->freq);
 if (idx >= ARRAY_SIZE(ar->survey)) {
  ath10k_warn(ar, "chan info: invalid frequency %d (idx %d out of bounds)\n",
       params->freq, idx);
  return;
 }

 if (params->cmd_flags & WMI_CHAN_INFO_FLAG_COMPLETE) {
  if (ar->ch_info_can_report_survey) {
   survey = &ar->survey[idx];
   survey->noise = params->noise_floor;
   survey->filled = SURVEY_INFO_NOISE_DBM;

   ath10k_hw_fill_survey_time(ar,
         survey,
         params->cycle_count,
         params->rx_clear_count,
         ar->survey_last_cycle_count,
         ar->survey_last_rx_clear_count);
  }

  ar->ch_info_can_report_survey = 0;
 } else {
  ar->ch_info_can_report_survey = 1;
 }

 if (!(params->cmd_flags & WMI_CHAN_INFO_FLAG_PRE_COMPLETE)) {
  ar->survey_last_rx_clear_count = params->rx_clear_count;
  ar->survey_last_cycle_count = params->cycle_count;
 }
}
