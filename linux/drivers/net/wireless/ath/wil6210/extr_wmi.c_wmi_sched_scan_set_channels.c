
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_start_sched_scan_cmd {int num_of_channels; scalar_t__* channel_list; } ;
struct wil6210_priv {int dummy; } ;
struct ieee80211_channel {scalar_t__ hw_value; } ;


 int WMI_MAX_CHANNEL_NUM ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int,int) ;

__attribute__((used)) static void
wmi_sched_scan_set_channels(struct wil6210_priv *wil,
       struct wmi_start_sched_scan_cmd *cmd,
       u32 n_channels,
       struct ieee80211_channel **channels)
{
 int i;

 if (n_channels > WMI_MAX_CHANNEL_NUM) {
  wil_dbg_wmi(wil, "too many channels (%d), use first %d\n",
       n_channels, WMI_MAX_CHANNEL_NUM);
  n_channels = WMI_MAX_CHANNEL_NUM;
 }
 cmd->num_of_channels = n_channels;

 for (i = 0; i < n_channels; i++) {
  struct ieee80211_channel *cfg_chan = channels[i];

  cmd->channel_list[i] = cfg_chan->hw_value - 1;
 }
}
