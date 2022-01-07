
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;


 int I2C_M_RD ;
 int mxl111sf_i2c_ack (struct mxl111sf_state*) ;
 int mxl111sf_i2c_bitbang_recvbyte (struct mxl111sf_state*,int*) ;
 int mxl111sf_i2c_bitbang_sendbyte (struct mxl111sf_state*,int) ;
 int mxl111sf_i2c_nack (struct mxl111sf_state*) ;
 int mxl111sf_i2c_start (struct mxl111sf_state*) ;
 int mxl111sf_i2c_stop (struct mxl111sf_state*) ;
 scalar_t__ mxl_fail (int) ;
 int mxl_i2c (char*) ;

__attribute__((used)) static int mxl111sf_i2c_sw_xfer_msg(struct mxl111sf_state *state,
        struct i2c_msg *msg)
{
 int i, ret;

 mxl_i2c("()");

 if (msg->flags & I2C_M_RD) {

  ret = mxl111sf_i2c_start(state);
  if (mxl_fail(ret))
   goto fail;

  ret = mxl111sf_i2c_bitbang_sendbyte(state,
          (msg->addr << 1) | 0x01);
  if (mxl_fail(ret)) {
   mxl111sf_i2c_stop(state);
   goto fail;
  }

  for (i = 0; i < msg->len; i++) {
   ret = mxl111sf_i2c_bitbang_recvbyte(state,
           &msg->buf[i]);
   if (mxl_fail(ret)) {
    mxl111sf_i2c_stop(state);
    goto fail;
   }

   if (i < msg->len - 1)
    mxl111sf_i2c_ack(state);
  }

  mxl111sf_i2c_nack(state);

  ret = mxl111sf_i2c_stop(state);
  if (mxl_fail(ret))
   goto fail;

 } else {

  ret = mxl111sf_i2c_start(state);
  if (mxl_fail(ret))
   goto fail;

  ret = mxl111sf_i2c_bitbang_sendbyte(state,
          (msg->addr << 1) & 0xfe);
  if (mxl_fail(ret)) {
   mxl111sf_i2c_stop(state);
   goto fail;
  }

  for (i = 0; i < msg->len; i++) {
   ret = mxl111sf_i2c_bitbang_sendbyte(state,
           msg->buf[i]);
   if (mxl_fail(ret)) {
    mxl111sf_i2c_stop(state);
    goto fail;
   }
  }


  mxl111sf_i2c_stop(state);
 }
fail:
 return ret;
}
