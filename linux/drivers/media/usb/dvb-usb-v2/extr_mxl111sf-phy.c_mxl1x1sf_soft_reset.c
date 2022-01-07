
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;


 int mxl111sf_write_reg (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*) ;
 scalar_t__ mxl_fail (int) ;

int mxl1x1sf_soft_reset(struct mxl111sf_state *state)
{
 int ret;
 mxl_debug("()");

 ret = mxl111sf_write_reg(state, 0xff, 0x00);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x02, 0x01);
 mxl_fail(ret);
fail:
 return ret;
}
