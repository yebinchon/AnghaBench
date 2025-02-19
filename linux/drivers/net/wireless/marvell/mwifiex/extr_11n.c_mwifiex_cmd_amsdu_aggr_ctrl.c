
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_ds_11n_amsdu_aggr_ctrl {int enable; } ;
struct host_cmd_ds_amsdu_aggr_ctrl {int curr_buf_size; void* enable; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_amsdu_aggr_ctrl amsdu_aggr_ctrl; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;




 int HostCmd_CMD_AMSDU_AGGR_CTRL ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;

int mwifiex_cmd_amsdu_aggr_ctrl(struct host_cmd_ds_command *cmd,
    int cmd_action,
    struct mwifiex_ds_11n_amsdu_aggr_ctrl *aa_ctrl)
{
 struct host_cmd_ds_amsdu_aggr_ctrl *amsdu_ctrl =
  &cmd->params.amsdu_aggr_ctrl;
 u16 action = (u16) cmd_action;

 cmd->command = cpu_to_le16(HostCmd_CMD_AMSDU_AGGR_CTRL);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_amsdu_aggr_ctrl)
    + S_DS_GEN);
 amsdu_ctrl->action = cpu_to_le16(action);
 switch (action) {
 case 128:
  amsdu_ctrl->enable = cpu_to_le16(aa_ctrl->enable);
  amsdu_ctrl->curr_buf_size = 0;
  break;
 case 129:
 default:
  amsdu_ctrl->curr_buf_size = 0;
  break;
 }
 return 0;
}
