
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_cmd_set_multicast_promisc {int enable; } ;


 int DPNI_CMDID_SET_MCAST_PROMISC ;
 int ENABLE ;
 int dpni_set_field (int ,int ,int) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_multicast_promisc(struct fsl_mc_io *mc_io,
          u32 cmd_flags,
          u16 token,
          int en)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_multicast_promisc *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_MCAST_PROMISC,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_multicast_promisc *)cmd.params;
 dpni_set_field(cmd_params->enable, ENABLE, en);


 return mc_send_command(mc_io, &cmd);
}
