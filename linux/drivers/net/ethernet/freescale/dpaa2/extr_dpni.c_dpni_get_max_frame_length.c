
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_max_frame_length {int max_frame_length; } ;


 int DPNI_CMDID_GET_MAX_FRAME_LENGTH ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_max_frame_length(struct fsl_mc_io *mc_io,
         u32 cmd_flags,
         u16 token,
         u16 *max_frame_length)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_rsp_get_max_frame_length *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_MAX_FRAME_LENGTH,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_max_frame_length *)cmd.params;
 *max_frame_length = le16_to_cpu(rsp_params->max_frame_length);

 return 0;
}
