
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {scalar_t__ chip_rev; } ;
struct i2c_msg {int flags; int addr; int len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; struct mxl111sf_state* priv; } ;


 int EAGAIN ;
 int EREMOTEIO ;
 int I2C_M_RD ;
 scalar_t__ MXL111SF_V6 ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int mxl111sf_i2c_hw_xfer_msg (struct mxl111sf_state*,struct i2c_msg*) ;
 int mxl111sf_i2c_sw_xfer_msg (struct mxl111sf_state*,struct i2c_msg*) ;
 int mxl_debug_adv (char*,int,int,int,char*,int ,int ) ;
 scalar_t__ mxl_fail (int) ;

int mxl111sf_i2c_xfer(struct i2c_adapter *adap,
        struct i2c_msg msg[], int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct mxl111sf_state *state = d->priv;
 int hwi2c = (state->chip_rev > MXL111SF_V6);
 int i, ret;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 for (i = 0; i < num; i++) {
  ret = (hwi2c) ?
   mxl111sf_i2c_hw_xfer_msg(state, &msg[i]) :
   mxl111sf_i2c_sw_xfer_msg(state, &msg[i]);
  if (mxl_fail(ret)) {
   mxl_debug_adv("failed with error %d on i2c transaction %d of %d, %sing %d bytes to/from 0x%02x",
          ret, i+1, num,
          (msg[i].flags & I2C_M_RD) ?
          "read" : "writ",
          msg[i].len, msg[i].addr);

   break;
  }
 }

 mutex_unlock(&d->i2c_mutex);

 return i == num ? num : -EREMOTEIO;
}
