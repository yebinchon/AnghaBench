
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_11ac_vht_cfg {int mcs_rx_set; int mcs_tx_set; int cap_info; int misc_config; int band_config; } ;
struct host_cmd_11ac_vht_cfg {void* mcs_rx_set; void* mcs_tx_set; void* cap_info; int misc_config; int band_config; void* action; } ;
struct TYPE_2__ {struct host_cmd_11ac_vht_cfg vht_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ HostCmd_CMD_11AC_CFG ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (int ) ;

int mwifiex_cmd_11ac_cfg(struct mwifiex_private *priv,
    struct host_cmd_ds_command *cmd, u16 cmd_action,
    struct mwifiex_11ac_vht_cfg *cfg)
{
 struct host_cmd_11ac_vht_cfg *vhtcfg = &cmd->params.vht_cfg;

 cmd->command = cpu_to_le16(HostCmd_CMD_11AC_CFG);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_11ac_vht_cfg) +
    S_DS_GEN);
 vhtcfg->action = cpu_to_le16(cmd_action);
 vhtcfg->band_config = cfg->band_config;
 vhtcfg->misc_config = cfg->misc_config;
 vhtcfg->cap_info = cpu_to_le32(cfg->cap_info);
 vhtcfg->mcs_tx_set = cpu_to_le32(cfg->mcs_tx_set);
 vhtcfg->mcs_rx_set = cpu_to_le32(cfg->mcs_rx_set);

 return 0;
}
