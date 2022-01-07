
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath6kl_wmix_dbglog_cfg_module_cmd {void* config; void* valid; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMIX_DBGLOG_CFG_MODULE_CMDID ;
 int ath6kl_wmi_cmd_send_xtnd (struct wmi*,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le32 (int ) ;

int ath6kl_wmi_config_debug_module_cmd(struct wmi *wmi, u32 valid, u32 config)
{
 struct ath6kl_wmix_dbglog_cfg_module_cmd *cmd;
 struct sk_buff *skb;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct ath6kl_wmix_dbglog_cfg_module_cmd *) skb->data;
 cmd->valid = cpu_to_le32(valid);
 cmd->config = cpu_to_le32(config);

 ret = ath6kl_wmi_cmd_send_xtnd(wmi, skb, WMIX_DBGLOG_CFG_MODULE_CMDID,
           NO_SYNC_WMIFLAG);
 return ret;
}
