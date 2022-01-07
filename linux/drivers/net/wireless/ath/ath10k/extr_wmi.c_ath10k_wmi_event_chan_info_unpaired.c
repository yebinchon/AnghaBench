
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct survey_info {int time; int time_busy; int filled; int noise; } ;
struct chan_info_params {int cmd_flags; int mac_clk_mhz; int cycle_count; int rx_clear_count; int noise_floor; int freq; } ;
struct ath10k {struct survey_info* survey; } ;


 int ARRAY_SIZE (struct survey_info*) ;
 int ATH10K_DBG_WMI ;
 int SURVEY_INFO_NOISE_DBM ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;
 int WMI_CHAN_INFO_FLAG_COMPLETE ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int freq_to_idx (struct ath10k*,int ) ;
 int memset (struct survey_info*,int ,int) ;

__attribute__((used)) static void ath10k_wmi_event_chan_info_unpaired(struct ath10k *ar,
      struct chan_info_params *params)
{
 struct survey_info *survey;
 int idx;

 if (params->cmd_flags & WMI_CHAN_INFO_FLAG_COMPLETE) {
  ath10k_dbg(ar, ATH10K_DBG_WMI, "chan info report completed\n");
  return;
 }

 idx = freq_to_idx(ar, params->freq);
 if (idx >= ARRAY_SIZE(ar->survey)) {
  ath10k_warn(ar, "chan info: invalid frequency %d (idx %d out of bounds)\n",
       params->freq, idx);
  return;
 }

 survey = &ar->survey[idx];

 if (!params->mac_clk_mhz)
  return;

 memset(survey, 0, sizeof(*survey));

 survey->noise = params->noise_floor;
 survey->time = (params->cycle_count / params->mac_clk_mhz) / 1000;
 survey->time_busy = (params->rx_clear_count / params->mac_clk_mhz) / 1000;
 survey->filled |= SURVEY_INFO_NOISE_DBM | SURVEY_INFO_TIME |
     SURVEY_INFO_TIME_BUSY;
}
