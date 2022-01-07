
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmix_cmd_hdr {int cmd_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
typedef enum wmix_command_id { ____Placeholder_wmix_command_id } wmix_command_id ;
typedef enum wmi_sync_flag { ____Placeholder_wmi_sync_flag } wmi_sync_flag ;


 int WMI_EXTENSION_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int) ;
 int cpu_to_le32 (int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int ath6kl_wmi_cmd_send_xtnd(struct wmi *wmi, struct sk_buff *skb,
        enum wmix_command_id cmd_id,
        enum wmi_sync_flag sync_flag)
{
 struct wmix_cmd_hdr *cmd_hdr;
 int ret;

 skb_push(skb, sizeof(struct wmix_cmd_hdr));

 cmd_hdr = (struct wmix_cmd_hdr *) skb->data;
 cmd_hdr->cmd_id = cpu_to_le32(cmd_id);

 ret = ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_EXTENSION_CMDID, sync_flag);

 return ret;
}
