
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;


 int mxl111sf_write_reg_mask (struct mxl111sf_state*,int,int,int) ;
 int mxl_debug (char*) ;

int mxl111sf_enable_usb_output(struct mxl111sf_state *state)
{
 mxl_debug("()");

 return mxl111sf_write_reg_mask(state, 0x17, 0x40, 0x00);
}
