
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct host_cmd_sdio_sp_rx_aggr_cfg {int enable; scalar_t__ action; } ;
struct TYPE_2__ {struct host_cmd_sdio_sp_rx_aggr_cfg sdio_rx_aggr_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ HostCmd_ACT_GEN_SET ;
 scalar_t__ HostCmd_CMD_SDIO_SP_RX_AGGR_CFG ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;

__attribute__((used)) static int mwifiex_cmd_sdio_rx_aggr_cfg(struct host_cmd_ds_command *cmd,
     u16 cmd_action, void *data_buf)
{
 struct host_cmd_sdio_sp_rx_aggr_cfg *cfg =
     &cmd->params.sdio_rx_aggr_cfg;

 cmd->command = cpu_to_le16(HostCmd_CMD_SDIO_SP_RX_AGGR_CFG);
 cmd->size =
  cpu_to_le16(sizeof(struct host_cmd_sdio_sp_rx_aggr_cfg) +
       S_DS_GEN);
 cfg->action = cmd_action;
 if (cmd_action == HostCmd_ACT_GEN_SET)
  cfg->enable = *(u8 *)data_buf;

 return 0;
}
