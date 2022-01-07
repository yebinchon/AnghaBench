
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;
struct mxl111sf_reg_ctrl_info {int member_0; int member_1; int member_2; } ;


 int mxl111sf_ctrl_program_regs (struct mxl111sf_state*,struct mxl111sf_reg_ctrl_info*) ;
 int mxl_debug (char*) ;

int mxl111sf_disable_i2s_port(struct mxl111sf_state *state)
{
 static struct mxl111sf_reg_ctrl_info disable_i2s[] = {
  {0x15, 0x40, 0x00},
  {0, 0, 0}
 };

 mxl_debug("()");

 return mxl111sf_ctrl_program_regs(state, disable_i2s);
}
