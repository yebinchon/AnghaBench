
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct TYPE_2__ {int default_flow_id; int miss_action; } ;
struct dpni_rx_tc_dist_cfg {int key_cfg_iova; TYPE_1__ fs_cfg; int dist_mode; int dist_size; } ;
struct dpni_cmd_set_rx_tc_dist {int key_cfg_iova; void* default_flow_id; int flags; int tc_id; void* dist_size; } ;


 int DIST_MODE ;
 int DPNI_CMDID_SET_RX_TC_DIST ;
 int MISS_ACTION ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le64 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_rx_tc_dist(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u8 tc_id,
   const struct dpni_rx_tc_dist_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_rx_tc_dist *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_RX_TC_DIST,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_rx_tc_dist *)cmd.params;
 cmd_params->dist_size = cpu_to_le16(cfg->dist_size);
 cmd_params->tc_id = tc_id;
 dpni_set_field(cmd_params->flags, DIST_MODE, cfg->dist_mode);
 dpni_set_field(cmd_params->flags, MISS_ACTION, cfg->fs_cfg.miss_action);
 cmd_params->default_flow_id = cpu_to_le16(cfg->fs_cfg.default_flow_id);
 cmd_params->key_cfg_iova = cpu_to_le64(cfg->key_cfg_iova);


 return mc_send_command(mc_io, &cmd);
}
