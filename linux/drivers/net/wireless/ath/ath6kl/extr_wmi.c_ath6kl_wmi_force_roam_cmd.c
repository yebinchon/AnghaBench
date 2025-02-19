
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int bssid; } ;
struct roam_ctrl_cmd {int roam_ctrl; TYPE_1__ info; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NO_SYNC_WMIFLAG ;
 int WMI_FORCE_ROAM ;
 int WMI_SET_ROAM_CTRL_CMDID ;
 int ath6kl_dbg (int ,char*,int const*) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int ,int const*,int ) ;

int ath6kl_wmi_force_roam_cmd(struct wmi *wmi, const u8 *bssid)
{
 struct sk_buff *skb;
 struct roam_ctrl_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct roam_ctrl_cmd *) skb->data;

 memcpy(cmd->info.bssid, bssid, ETH_ALEN);
 cmd->roam_ctrl = WMI_FORCE_ROAM;

 ath6kl_dbg(ATH6KL_DBG_WMI, "force roam to %pM\n", bssid);
 return ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_SET_ROAM_CTRL_CMDID,
       NO_SYNC_WMIFLAG);
}
