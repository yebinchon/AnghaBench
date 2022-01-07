
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_taildrop {int threshold; int units; int enable; } ;
struct dpni_rsp_get_taildrop {int threshold; int units; int enable; } ;
struct dpni_cmd_get_taildrop {int congestion_point; int qtype; void* index; void* tc; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;
typedef enum dpni_congestion_point { ____Placeholder_dpni_congestion_point } dpni_congestion_point ;


 int DPNI_CMDID_GET_TAILDROP ;
 int ENABLE ;
 int dpni_get_field (int ,int ) ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_taildrop(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        enum dpni_congestion_point cg_point,
        enum dpni_queue_type qtype,
        u8 tc,
        u8 index,
        struct dpni_taildrop *taildrop)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_taildrop *cmd_params;
 struct dpni_rsp_get_taildrop *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_TAILDROP,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_taildrop *)cmd.params;
 cmd_params->congestion_point = cg_point;
 cmd_params->qtype = qtype;
 cmd_params->tc = tc;
 cmd_params->index = index;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_taildrop *)cmd.params;
 taildrop->enable = dpni_get_field(rsp_params->enable, ENABLE);
 taildrop->units = rsp_params->units;
 taildrop->threshold = le32_to_cpu(rsp_params->threshold);

 return 0;
}
