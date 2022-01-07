
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_offload {int config; } ;
struct dpni_cmd_get_offload {int dpni_offload; } ;
typedef enum dpni_offload { ____Placeholder_dpni_offload } dpni_offload ;


 int DPNI_CMDID_GET_OFFLOAD ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_offload(struct fsl_mc_io *mc_io,
       u32 cmd_flags,
       u16 token,
       enum dpni_offload type,
       u32 *config)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_offload *cmd_params;
 struct dpni_rsp_get_offload *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_OFFLOAD,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_offload *)cmd.params;
 cmd_params->dpni_offload = type;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_offload *)cmd.params;
 *config = le32_to_cpu(rsp_params->config);

 return 0;
}
