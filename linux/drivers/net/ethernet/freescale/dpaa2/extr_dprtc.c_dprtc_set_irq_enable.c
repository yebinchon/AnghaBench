
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprtc_cmd_set_irq_enable {void* en; void* irq_index; } ;


 int DPRTC_CMDID_SET_IRQ_ENABLE ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprtc_set_irq_enable(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    u8 irq_index,
    u8 en)
{
 struct dprtc_cmd_set_irq_enable *cmd_params;
 struct fsl_mc_command cmd = { 0 };

 cmd.header = mc_encode_cmd_header(DPRTC_CMDID_SET_IRQ_ENABLE,
       cmd_flags,
       token);
 cmd_params = (struct dprtc_cmd_set_irq_enable *)cmd.params;
 cmd_params->irq_index = irq_index;
 cmd_params->en = en;

 return mc_send_command(mc_io, &cmd);
}
