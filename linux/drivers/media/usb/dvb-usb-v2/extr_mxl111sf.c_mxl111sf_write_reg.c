
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int MXL_CMD_REG_WRITE ;
 int mxl111sf_ctrl_msg (struct mxl111sf_state*,int ,int *,int,int *,int ) ;
 scalar_t__ mxl_fail (int) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ,int ) ;

int mxl111sf_write_reg(struct mxl111sf_state *state, u8 addr, u8 data)
{
 u8 buf[] = { addr, data };
 int ret;

 pr_debug("W: (0x%02x, 0x%02x)\n", addr, data);

 ret = mxl111sf_ctrl_msg(state, MXL_CMD_REG_WRITE, buf, 2, ((void*)0), 0);
 if (mxl_fail(ret))
  pr_err("error writing reg: 0x%02x, val: 0x%02x", addr, data);
 return ret;
}
