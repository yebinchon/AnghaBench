
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rule_cfg {int mask_iova; int key_iova; int key_size; } ;
struct dpni_cmd_remove_fs_entry {void* mask_iova; void* key_iova; int key_size; int tc_id; } ;


 int DPNI_CMDID_REMOVE_FS_ENT ;
 void* cpu_to_le64 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_remove_fs_entry(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    u8 tc_id,
    const struct dpni_rule_cfg *cfg)
{
 struct dpni_cmd_remove_fs_entry *cmd_params;
 struct fsl_mc_command cmd = { 0 };


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_REMOVE_FS_ENT,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_remove_fs_entry *)cmd.params;
 cmd_params->tc_id = tc_id;
 cmd_params->key_size = cfg->key_size;
 cmd_params->key_iova = cpu_to_le64(cfg->key_iova);
 cmd_params->mask_iova = cpu_to_le64(cfg->mask_iova);


 return mc_send_command(mc_io, &cmd);
}
