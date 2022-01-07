
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_command {void* size; void* command; } ;


 int ERROR ;







 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;
 int mwifiex_cmd_issue_chan_report_request (struct mwifiex_private*,void*,void*) ;
 int mwifiex_cmd_uap_sta_deauth (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_uap_sys_config (struct host_cmd_ds_command*,int,int ,void*) ;
 int mwifiex_dbg (int ,int ,char*,int) ;

int mwifiex_uap_prepare_cmd(struct mwifiex_private *priv, u16 cmd_no,
       u16 cmd_action, u32 type,
       void *data_buf, void *cmd_buf)
{
 struct host_cmd_ds_command *cmd = cmd_buf;

 switch (cmd_no) {
 case 128:
  if (mwifiex_cmd_uap_sys_config(cmd, cmd_action, type, data_buf))
   return -1;
  break;
 case 131:
 case 130:
 case 133:
 case 134:
  cmd->command = cpu_to_le16(cmd_no);
  cmd->size = cpu_to_le16(S_DS_GEN);
  break;
 case 129:
  if (mwifiex_cmd_uap_sta_deauth(priv, cmd, data_buf))
   return -1;
  break;
 case 132:
  if (mwifiex_cmd_issue_chan_report_request(priv, cmd_buf,
         data_buf))
   return -1;
  break;
 default:
  mwifiex_dbg(priv->adapter, ERROR,
       "PREP_CMD: unknown cmd %#x\n", cmd_no);
  return -1;
 }

 return 0;
}
