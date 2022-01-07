
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_disc_timeout_cmd {int discon_timeout; } ;
struct wmi {int parent_dev; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_DISC_TIMEOUT_CMDID ;
 int ath6kl_debug_set_disconnect_timeout (int ,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_disctimeout_cmd(struct wmi *wmi, u8 if_idx, u8 timeout)
{
 struct sk_buff *skb;
 struct wmi_disc_timeout_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_disc_timeout_cmd *) skb->data;
 cmd->discon_timeout = timeout;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_DISC_TIMEOUT_CMDID,
      NO_SYNC_WMIFLAG);

 if (ret == 0)
  ath6kl_debug_set_disconnect_timeout(wmi->parent_dev, timeout);

 return ret;
}
