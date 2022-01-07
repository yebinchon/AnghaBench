
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_unicast_promisc {int enabled; } ;


 int DPNI_CMDID_GET_UNICAST_PROMISC ;
 int ENABLE ;
 int dpni_get_field (int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_unicast_promisc(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        int *en)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_rsp_get_unicast_promisc *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_UNICAST_PROMISC,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_unicast_promisc *)cmd.params;
 *en = dpni_get_field(rsp_params->enabled, ENABLE);

 return 0;
}
