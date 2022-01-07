
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int mxl111sf_read_reg (struct mxl111sf_state*,int,int*) ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int,int) ;
 scalar_t__ mxl_fail (int) ;
 int pr_err (char*,int,int,int) ;

int mxl111sf_write_reg_mask(struct mxl111sf_state *state,
       u8 addr, u8 mask, u8 data)
{
 int ret;
 u8 val = 0;

 if (mask != 0xff) {
  ret = mxl111sf_read_reg(state, addr, &val);


  if (mxl_fail(ret))
   pr_err("error writing addr: 0x%02x, mask: 0x%02x, data: 0x%02x, retrying...",
          addr, mask, data);

  ret = mxl111sf_read_reg(state, addr, &val);

  if (mxl_fail(ret))
   goto fail;
 }
 val &= ~mask;
 val |= data;

 ret = mxl111sf_write_reg(state, addr, val);
 mxl_fail(ret);
fail:
 return ret;
}
