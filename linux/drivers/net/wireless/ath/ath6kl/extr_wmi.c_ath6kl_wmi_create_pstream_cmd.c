
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wmi_create_pstream_cmd {int user_pri; int traffic_class; scalar_t__ traffic_direc; scalar_t__ traffic_type; scalar_t__ voice_psc_cap; int tsid; int nominal_phy; int min_phy_rate; } ;
struct wmi {int fat_pipe_exist; int* stream_exist_for_ac; int parent_dev; int lock; } ;
struct sk_buff {scalar_t__ data; } ;
typedef int s32 ;


 int ATH6KL_DBG_WMI ;
 scalar_t__ BIDIR_TRAFFIC ;
 scalar_t__ DISABLE_FOR_THIS_AC ;
 scalar_t__ DNLINK_TRAFFIC ;
 int EINVAL ;
 scalar_t__ ENABLE_FOR_ALL_AC ;
 scalar_t__ ENABLE_FOR_THIS_AC ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 scalar_t__ TRAFFIC_TYPE_APERIODIC ;
 scalar_t__ TRAFFIC_TYPE_PERIODIC ;
 scalar_t__ UPLINK_TRAFFIC ;
 int WMI_CREATE_PSTREAM_CMDID ;
 int WMI_IMPLICIT_PSTREAM ;
 int WMI_MAX_THINSTREAM ;
 int ath6kl_dbg (int ,char*,int,int) ;
 int ath6kl_indicate_tx_activity (int ,int,int) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int le32_to_cpu (int ) ;
 int memcpy (struct wmi_create_pstream_cmd*,struct wmi_create_pstream_cmd*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int* up_to_ac ;

int ath6kl_wmi_create_pstream_cmd(struct wmi *wmi, u8 if_idx,
      struct wmi_create_pstream_cmd *params)
{
 struct sk_buff *skb;
 struct wmi_create_pstream_cmd *cmd;
 u8 fatpipe_exist_for_ac = 0;
 s32 min_phy = 0;
 s32 nominal_phy = 0;
 int ret;

 if (!((params->user_pri <= 0x7) &&
       (up_to_ac[params->user_pri & 0x7] == params->traffic_class) &&
       (params->traffic_direc == UPLINK_TRAFFIC ||
        params->traffic_direc == DNLINK_TRAFFIC ||
        params->traffic_direc == BIDIR_TRAFFIC) &&
       (params->traffic_type == TRAFFIC_TYPE_APERIODIC ||
        params->traffic_type == TRAFFIC_TYPE_PERIODIC) &&
       (params->voice_psc_cap == DISABLE_FOR_THIS_AC ||
        params->voice_psc_cap == ENABLE_FOR_THIS_AC ||
        params->voice_psc_cap == ENABLE_FOR_ALL_AC) &&
       (params->tsid == WMI_IMPLICIT_PSTREAM ||
        params->tsid <= WMI_MAX_THINSTREAM))) {
  return -EINVAL;
 }







 min_phy = ((le32_to_cpu(params->min_phy_rate) / 1000) / 1000);


 if (params->nominal_phy >= min_phy) {

  nominal_phy = (params->nominal_phy * 1000) / 500;
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "TSRS IE enabled::MinPhy %x->NominalPhy ===> %x\n",
      min_phy, nominal_phy);

  params->nominal_phy = nominal_phy;
 } else {
  params->nominal_phy = 0;
 }

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "sending create_pstream_cmd: ac=%d  tsid:%d\n",
     params->traffic_class, params->tsid);

 cmd = (struct wmi_create_pstream_cmd *) skb->data;
 memcpy(cmd, params, sizeof(*cmd));


 if ((u32) params->tsid == (u32) WMI_IMPLICIT_PSTREAM) {
  spin_lock_bh(&wmi->lock);
  fatpipe_exist_for_ac = (wmi->fat_pipe_exist &
     (1 << params->traffic_class));
  wmi->fat_pipe_exist |= (1 << params->traffic_class);
  spin_unlock_bh(&wmi->lock);
 } else {

  spin_lock_bh(&wmi->lock);
  fatpipe_exist_for_ac = (wmi->fat_pipe_exist &
     (1 << params->traffic_class));
  wmi->stream_exist_for_ac[params->traffic_class] |=
      (1 << params->tsid);




  wmi->fat_pipe_exist |= (1 << params->traffic_class);
  spin_unlock_bh(&wmi->lock);
 }






 if (!fatpipe_exist_for_ac)
  ath6kl_indicate_tx_activity(wmi->parent_dev,
         params->traffic_class, 1);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_CREATE_PSTREAM_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
