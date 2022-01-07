
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;
struct bttv {int dummy; } ;


 int BT848_INT_I2CDONE ;
 int BT848_INT_RACK ;
 int BT848_INT_STAT ;
 int I2C_M_RD ;
 int bttv_i2c_readbytes (struct bttv*,struct i2c_msg*,int) ;
 int bttv_i2c_sendbytes (struct bttv*,struct i2c_msg*,int) ;
 int btwrite (int,int ) ;
 scalar_t__ i2c_debug ;
 struct v4l2_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int pr_debug (char*) ;
 struct bttv* to_bttv (struct v4l2_device*) ;

__attribute__((used)) static int bttv_i2c_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
 struct v4l2_device *v4l2_dev = i2c_get_adapdata(i2c_adap);
 struct bttv *btv = to_bttv(v4l2_dev);
 int retval = 0;
 int i;

 if (i2c_debug)
  pr_debug("bt-i2c:");

 btwrite(BT848_INT_I2CDONE|BT848_INT_RACK, BT848_INT_STAT);
 for (i = 0 ; i < num; i++) {
  if (msgs[i].flags & I2C_M_RD) {

   retval = bttv_i2c_readbytes(btv, &msgs[i], i+1 == num);
   if (retval < 0)
    goto err;
  } else {

   retval = bttv_i2c_sendbytes(btv, &msgs[i], i+1 == num);
   if (retval < 0)
    goto err;
  }
 }
 return num;

 err:
 return retval;
}
