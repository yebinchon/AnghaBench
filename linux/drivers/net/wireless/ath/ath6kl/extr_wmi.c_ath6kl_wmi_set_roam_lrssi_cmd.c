
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {int roam_rssi_floor; void* lrssi_roam_threshold; void* lrssi_scan_threshold; int lrssi_scan_period; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct roam_ctrl_cmd {int roam_ctrl; TYPE_2__ info; } ;


 int DEF_LRSSI_ROAM_FLOOR ;
 int DEF_LRSSI_SCAN_PERIOD ;
 scalar_t__ DEF_SCAN_FOR_ROAM_INTVL ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_LRSSI_SCAN_PARAMS ;
 int WMI_SET_ROAM_CTRL_CMDID ;
 void* a_cpu_to_sle16 (scalar_t__) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le16 (int ) ;

int ath6kl_wmi_set_roam_lrssi_cmd(struct wmi *wmi, u8 lrssi)
{
 struct sk_buff *skb;
 struct roam_ctrl_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct roam_ctrl_cmd *) skb->data;

 cmd->info.params.lrssi_scan_period = cpu_to_le16(DEF_LRSSI_SCAN_PERIOD);
 cmd->info.params.lrssi_scan_threshold = a_cpu_to_sle16(lrssi +
             DEF_SCAN_FOR_ROAM_INTVL);
 cmd->info.params.lrssi_roam_threshold = a_cpu_to_sle16(lrssi);
 cmd->info.params.roam_rssi_floor = DEF_LRSSI_ROAM_FLOOR;
 cmd->roam_ctrl = WMI_SET_LRSSI_SCAN_PARAMS;

 return ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_SET_ROAM_CTRL_CMDID,
       NO_SYNC_WMIFLAG);
}
