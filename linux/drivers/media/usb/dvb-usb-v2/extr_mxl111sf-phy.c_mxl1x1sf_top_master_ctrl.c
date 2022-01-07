
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;


 int mxl111sf_write_reg (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*,int) ;

int mxl1x1sf_top_master_ctrl(struct mxl111sf_state *state, int onoff)
{
 mxl_debug("(%d)", onoff);

 return mxl111sf_write_reg(state, 0x01, onoff ? 0x01 : 0x00);
}
