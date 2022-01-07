
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_radar_params {scalar_t__ cac_time_ms; struct cfg80211_chan_def* chandef; } ;
struct mwifiex_private {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;


 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_CHAN_REPORT_REQUEST ;
 int memset (struct mwifiex_radar_params*,int ,int) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_radar_params*,int) ;

int mwifiex_stop_radar_detection(struct mwifiex_private *priv,
     struct cfg80211_chan_def *chandef)
{
 struct mwifiex_radar_params radar_params;

 memset(&radar_params, 0, sizeof(struct mwifiex_radar_params));
 radar_params.chandef = chandef;
 radar_params.cac_time_ms = 0;

 return mwifiex_send_cmd(priv, HostCmd_CMD_CHAN_REPORT_REQUEST,
    HostCmd_ACT_GEN_SET, 0, &radar_params, 1);
}
