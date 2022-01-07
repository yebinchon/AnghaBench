
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rx_dist_cfg {int key_cfg_iova; int tc; int enable; int dist_size; } ;
struct dpni_cmd_set_rx_hash_dist {int key_cfg_iova; int tc; int enable; int dist_size; } ;


 int DPNI_CMDID_SET_RX_HASH_DIST ;
 int RX_HASH_DIST_ENABLE ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le64 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_rx_hash_dist(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     u16 token,
     const struct dpni_rx_dist_cfg *cfg)
{
 struct dpni_cmd_set_rx_hash_dist *cmd_params;
 struct fsl_mc_command cmd = { 0 };


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_RX_HASH_DIST,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_rx_hash_dist *)cmd.params;
 cmd_params->dist_size = cpu_to_le16(cfg->dist_size);
 dpni_set_field(cmd_params->enable, RX_HASH_DIST_ENABLE, cfg->enable);
 cmd_params->tc = cfg->tc;
 cmd_params->key_cfg_iova = cpu_to_le64(cfg->key_cfg_iova);


 return mc_send_command(mc_io, &cmd);
}
