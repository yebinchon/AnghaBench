
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
struct dpni_cmd_set_taildrop {int congestion_point; int qtype; int threshold; int units; int enable; void* index; void* tc; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;
typedef enum dpni_congestion_point { ____Placeholder_dpni_congestion_point } dpni_congestion_point ;


 int DPNI_CMDID_SET_TAILDROP ;
 int ENABLE ;
 int cpu_to_le32 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_taildrop(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        enum dpni_congestion_point cg_point,
        enum dpni_queue_type qtype,
        u8 tc,
        u8 index,
        struct dpni_taildrop *taildrop)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_taildrop *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_TAILDROP,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_taildrop *)cmd.params;
 cmd_params->congestion_point = cg_point;
 cmd_params->qtype = qtype;
 cmd_params->tc = tc;
 cmd_params->index = index;
 dpni_set_field(cmd_params->enable, ENABLE, taildrop->enable);
 cmd_params->units = taildrop->units;
 cmd_params->threshold = cpu_to_le32(taildrop->threshold);


 return mc_send_command(mc_io, &cmd);
}
