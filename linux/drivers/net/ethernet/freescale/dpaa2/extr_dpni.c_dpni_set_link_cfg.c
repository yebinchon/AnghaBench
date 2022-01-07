
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_link_cfg {int options; int rate; } ;
struct dpni_cmd_link_cfg {int options; int rate; } ;


 int DPNI_CMDID_SET_LINK_CFG ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_link_cfg(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        const struct dpni_link_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_link_cfg *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_LINK_CFG,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_link_cfg *)cmd.params;
 cmd_params->rate = cpu_to_le32(cfg->rate);
 cmd_params->options = cpu_to_le64(cfg->options);


 return mc_send_command(mc_io, &cmd);
}
