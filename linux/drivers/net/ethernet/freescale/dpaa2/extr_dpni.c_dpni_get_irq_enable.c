
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_irq_enable {int enabled; } ;
struct dpni_cmd_get_irq_enable {int irq_index; } ;


 int DPNI_CMDID_GET_IRQ_ENABLE ;
 int ENABLE ;
 int dpni_get_field (int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_irq_enable(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u8 irq_index,
   u8 *en)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_irq_enable *cmd_params;
 struct dpni_rsp_get_irq_enable *rsp_params;

 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_IRQ_ENABLE,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_irq_enable *)cmd.params;
 cmd_params->irq_index = irq_index;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_irq_enable *)cmd.params;
 *en = dpni_get_field(rsp_params->enabled, ENABLE);

 return 0;
}
