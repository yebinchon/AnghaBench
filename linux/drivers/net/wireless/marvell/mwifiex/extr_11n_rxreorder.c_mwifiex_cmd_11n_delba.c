
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host_cmd_ds_11n_delba {int dummy; } ;
struct TYPE_2__ {struct host_cmd_ds_11n_delba del_ba; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ HostCmd_CMD_11N_DELBA ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 int memcpy (struct host_cmd_ds_11n_delba*,void*,int) ;

int mwifiex_cmd_11n_delba(struct host_cmd_ds_command *cmd, void *data_buf)
{
 struct host_cmd_ds_11n_delba *del_ba = &cmd->params.del_ba;

 cmd->command = cpu_to_le16(HostCmd_CMD_11N_DELBA);
 cmd->size = cpu_to_le16(sizeof(*del_ba) + S_DS_GEN);
 memcpy(del_ba, data_buf, sizeof(*del_ba));

 return 0;
}
