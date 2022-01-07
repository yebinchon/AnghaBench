
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;
struct mxl111sf_reg_ctrl_info {int addr; int mask; int data; } ;


 int mxl111sf_write_reg_mask (struct mxl111sf_state*,int,int,int) ;
 scalar_t__ mxl_fail (int) ;
 int pr_err (char*,int,int) ;

int mxl111sf_ctrl_program_regs(struct mxl111sf_state *state,
          struct mxl111sf_reg_ctrl_info *ctrl_reg_info)
{
 int i, ret = 0;

 for (i = 0; ctrl_reg_info[i].addr |
       ctrl_reg_info[i].mask |
       ctrl_reg_info[i].data; i++) {

  ret = mxl111sf_write_reg_mask(state,
           ctrl_reg_info[i].addr,
           ctrl_reg_info[i].mask,
           ctrl_reg_info[i].data);
  if (mxl_fail(ret)) {
   pr_err("failed on reg #%d (0x%02x)", i,
       ctrl_reg_info[i].addr);
   break;
  }
 }
 return ret;
}
