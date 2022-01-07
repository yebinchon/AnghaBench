
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct mwifiex_ds_coalesce_cfg {size_t num_of_rules; TYPE_3__* rule; } ;
struct host_cmd_ds_coalesce_cfg {struct coalesce_receive_filt_rule* rule; void* num_of_rules; void* action; } ;
struct TYPE_5__ {struct host_cmd_ds_coalesce_cfg coalesce_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;
struct TYPE_8__ {void* len; void* type; } ;
struct coalesce_receive_filt_rule {size_t num_of_fields; struct coalesce_filt_field_param* params; TYPE_4__ header; int pkt_type; void* max_coalescing_delay; } ;
struct coalesce_filt_field_param {int operand_len; int operand_byte_stream; void* offset; int operation; } ;
struct TYPE_7__ {size_t max_coalescing_delay; size_t num_of_fields; TYPE_2__* params; int pkt_type; } ;
struct TYPE_6__ {size_t offset; int operand_byte_stream; int operand_len; int operation; } ;


 size_t HostCmd_CMD_COALESCE_CFG ;
 size_t S_DS_GEN ;
 size_t TLV_TYPE_COALESCE_RULE ;
 void* cpu_to_le16 (size_t) ;
 int le16_to_cpu (void*) ;
 int le16_unaligned_add_cpu (void**,int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
mwifiex_cmd_coalesce_cfg(struct mwifiex_private *priv,
    struct host_cmd_ds_command *cmd,
    u16 cmd_action, void *data_buf)
{
 struct host_cmd_ds_coalesce_cfg *coalesce_cfg =
      &cmd->params.coalesce_cfg;
 struct mwifiex_ds_coalesce_cfg *cfg = data_buf;
 struct coalesce_filt_field_param *param;
 u16 cnt, idx, length;
 struct coalesce_receive_filt_rule *rule;

 cmd->command = cpu_to_le16(HostCmd_CMD_COALESCE_CFG);
 cmd->size = cpu_to_le16(S_DS_GEN);

 coalesce_cfg->action = cpu_to_le16(cmd_action);
 coalesce_cfg->num_of_rules = cpu_to_le16(cfg->num_of_rules);
 rule = coalesce_cfg->rule;

 for (cnt = 0; cnt < cfg->num_of_rules; cnt++) {
  rule->header.type = cpu_to_le16(TLV_TYPE_COALESCE_RULE);
  rule->max_coalescing_delay =
   cpu_to_le16(cfg->rule[cnt].max_coalescing_delay);
  rule->pkt_type = cfg->rule[cnt].pkt_type;
  rule->num_of_fields = cfg->rule[cnt].num_of_fields;

  length = 0;

  param = rule->params;
  for (idx = 0; idx < cfg->rule[cnt].num_of_fields; idx++) {
   param->operation = cfg->rule[cnt].params[idx].operation;
   param->operand_len =
     cfg->rule[cnt].params[idx].operand_len;
   param->offset =
    cpu_to_le16(cfg->rule[cnt].params[idx].offset);
   memcpy(param->operand_byte_stream,
          cfg->rule[cnt].params[idx].operand_byte_stream,
          param->operand_len);

   length += sizeof(struct coalesce_filt_field_param);

   param++;
  }





  rule->header.len = cpu_to_le16(length + sizeof(u16) +
            sizeof(u8) + sizeof(u8));


  le16_unaligned_add_cpu(&cmd->size,
           le16_to_cpu(rule->header.len) +
           sizeof(struct mwifiex_ie_types_header));

  rule = (void *)((u8 *)rule->params + length);
 }


 le16_unaligned_add_cpu(&cmd->size, sizeof(u16) + sizeof(u16));

 return 0;
}
