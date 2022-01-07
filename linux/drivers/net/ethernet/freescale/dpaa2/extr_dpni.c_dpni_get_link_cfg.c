
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


 int DPNI_CMDID_GET_LINK_CFG ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_link_cfg(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        struct dpni_link_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_link_cfg *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_LINK_CFG,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_cmd_link_cfg *)cmd.params;
 cfg->rate = le32_to_cpu(rsp_params->rate);
 cfg->options = le64_to_cpu(rsp_params->options);

 return err;
}
