
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_bmiss_time_cmd {void* num_beacons; void* bmiss_time; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_BMISS_TIME_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le16 (int ) ;

int ath6kl_wmi_bmisstime_cmd(struct wmi *wmi, u8 if_idx,
        u16 bmiss_time, u16 num_beacons)
{
 struct sk_buff *skb;
 struct wmi_bmiss_time_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_bmiss_time_cmd *) skb->data;
 cmd->bmiss_time = cpu_to_le16(bmiss_time);
 cmd->num_beacons = cpu_to_le16(num_beacons);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_BMISS_TIME_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
