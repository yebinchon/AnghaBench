
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mwifiex_types_power_group {void* length; } ;
struct host_cmd_ds_txpwr_cfg {void* action; int mode; } ;
struct TYPE_2__ {struct host_cmd_ds_txpwr_cfg txp_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;




 int HostCmd_CMD_TXPWR_CFG ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int memmove (struct host_cmd_ds_txpwr_cfg*,struct host_cmd_ds_txpwr_cfg*,int) ;

__attribute__((used)) static int mwifiex_cmd_tx_power_cfg(struct host_cmd_ds_command *cmd,
        u16 cmd_action,
        struct host_cmd_ds_txpwr_cfg *txp)
{
 struct mwifiex_types_power_group *pg_tlv;
 struct host_cmd_ds_txpwr_cfg *cmd_txp_cfg = &cmd->params.txp_cfg;

 cmd->command = cpu_to_le16(HostCmd_CMD_TXPWR_CFG);
 cmd->size =
  cpu_to_le16(S_DS_GEN + sizeof(struct host_cmd_ds_txpwr_cfg));
 switch (cmd_action) {
 case 128:
  if (txp->mode) {
   pg_tlv = (struct mwifiex_types_power_group
      *) ((unsigned long) txp +
         sizeof(struct host_cmd_ds_txpwr_cfg));
   memmove(cmd_txp_cfg, txp,
    sizeof(struct host_cmd_ds_txpwr_cfg) +
    sizeof(struct mwifiex_types_power_group) +
    le16_to_cpu(pg_tlv->length));

   pg_tlv = (struct mwifiex_types_power_group *) ((u8 *)
      cmd_txp_cfg +
      sizeof(struct host_cmd_ds_txpwr_cfg));
   cmd->size = cpu_to_le16(le16_to_cpu(cmd->size) +
      sizeof(struct mwifiex_types_power_group) +
      le16_to_cpu(pg_tlv->length));
  } else {
   memmove(cmd_txp_cfg, txp, sizeof(*txp));
  }
  cmd_txp_cfg->action = cpu_to_le16(cmd_action);
  break;
 case 129:
  cmd_txp_cfg->action = cpu_to_le16(cmd_action);
  break;
 }

 return 0;
}
