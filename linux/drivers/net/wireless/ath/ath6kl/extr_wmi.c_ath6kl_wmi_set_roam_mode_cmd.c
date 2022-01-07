
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int roam_mode; } ;
struct roam_ctrl_cmd {int roam_ctrl; TYPE_1__ info; } ;
typedef enum wmi_roam_mode { ____Placeholder_wmi_roam_mode } wmi_roam_mode ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_ROAM_CTRL_CMDID ;
 int WMI_SET_ROAM_MODE ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_set_roam_mode_cmd(struct wmi *wmi, enum wmi_roam_mode mode)
{
 struct sk_buff *skb;
 struct roam_ctrl_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct roam_ctrl_cmd *) skb->data;

 cmd->info.roam_mode = mode;
 cmd->roam_ctrl = WMI_SET_ROAM_MODE;

 ath6kl_dbg(ATH6KL_DBG_WMI, "set roam mode %d\n", mode);
 return ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_SET_ROAM_CTRL_CMDID,
       NO_SYNC_WMIFLAG);
}
