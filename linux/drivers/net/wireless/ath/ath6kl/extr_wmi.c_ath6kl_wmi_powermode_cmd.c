
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wmi_power_mode_cmd {void* pwr_mode; } ;
struct wmi {void* pwr_mode; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_POWER_MODE_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,void*,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_powermode_cmd(struct wmi *wmi, u8 if_idx, u8 pwr_mode)
{
 struct sk_buff *skb;
 struct wmi_power_mode_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_power_mode_cmd *) skb->data;
 cmd->pwr_mode = pwr_mode;
 wmi->pwr_mode = pwr_mode;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_POWER_MODE_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
