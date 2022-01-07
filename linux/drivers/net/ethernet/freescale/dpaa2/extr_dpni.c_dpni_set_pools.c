
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_pools_cfg {TYPE_1__* pools; int num_dpbp; } ;
struct dpni_cmd_set_pools {int backup_pool_mask; int * buffer_size; int * dpbp_id; int num_dpbp; } ;
struct TYPE_2__ {int backup_pool; int buffer_size; int dpbp_id; } ;


 int DPNI_BACKUP_POOL (int ,int) ;
 int DPNI_CMDID_SET_POOLS ;
 int DPNI_MAX_DPBP ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_pools(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     u16 token,
     const struct dpni_pools_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_pools *cmd_params;
 int i;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_POOLS,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_pools *)cmd.params;
 cmd_params->num_dpbp = cfg->num_dpbp;
 for (i = 0; i < DPNI_MAX_DPBP; i++) {
  cmd_params->dpbp_id[i] = cpu_to_le32(cfg->pools[i].dpbp_id);
  cmd_params->buffer_size[i] =
   cpu_to_le16(cfg->pools[i].buffer_size);
  cmd_params->backup_pool_mask |=
   DPNI_BACKUP_POOL(cfg->pools[i].backup_pool, i);
 }


 return mc_send_command(mc_io, &cmd);
}
