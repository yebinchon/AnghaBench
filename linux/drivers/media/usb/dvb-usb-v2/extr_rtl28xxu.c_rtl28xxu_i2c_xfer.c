
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl28xxu_req {int value; int index; int size; int* data; } ;
struct rtl28xxu_dev {int page; int new_i2c_write; } ;
struct i2c_msg {int flags; int len; int addr; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; struct rtl28xxu_dev* priv; } ;


 int CMD_DEMOD_RD ;
 int CMD_DEMOD_WR ;
 void* CMD_I2C_DA_RD ;
 void* CMD_I2C_DA_WR ;
 int CMD_I2C_RD ;
 int CMD_I2C_WR ;
 int EAGAIN ;
 int EOPNOTSUPP ;
 int EPIPE ;
 int I2C_M_RD ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtl28xxu_ctrl_msg (struct dvb_usb_device*,struct rtl28xxu_req*) ;

__attribute__((used)) static int rtl28xxu_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
 int num)
{
 int ret;
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct rtl28xxu_dev *dev = d->priv;
 struct rtl28xxu_req req;
 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 if (num == 2 && !(msg[0].flags & I2C_M_RD) &&
  (msg[1].flags & I2C_M_RD)) {
  if (msg[0].len > 24 || msg[1].len > 24) {

   ret = -EOPNOTSUPP;
   goto err_mutex_unlock;
  } else if (msg[0].addr == 0x10) {

   if (msg[0].buf[0] == 0x00) {

    msg[1].buf[0] = dev->page;
    ret = 0;
   } else {
    req.value = (msg[0].buf[0] << 8) | (msg[0].addr << 1);
    req.index = CMD_DEMOD_RD | dev->page;
    req.size = msg[1].len;
    req.data = &msg[1].buf[0];
    ret = rtl28xxu_ctrl_msg(d, &req);
   }
  } else if (msg[0].len < 2) {

   req.value = (msg[0].buf[0] << 8) | (msg[0].addr << 1);
   req.index = CMD_I2C_RD;
   req.size = msg[1].len;
   req.data = &msg[1].buf[0];
   ret = rtl28xxu_ctrl_msg(d, &req);
  } else {

   req.value = (msg[0].addr << 1);
   req.index = CMD_I2C_DA_WR;
   req.size = msg[0].len;
   req.data = msg[0].buf;
   ret = rtl28xxu_ctrl_msg(d, &req);
   if (ret)
    goto err_mutex_unlock;

   req.value = (msg[0].addr << 1);
   req.index = CMD_I2C_DA_RD;
   req.size = msg[1].len;
   req.data = msg[1].buf;
   ret = rtl28xxu_ctrl_msg(d, &req);
  }
 } else if (num == 1 && !(msg[0].flags & I2C_M_RD)) {
  if (msg[0].len > 22) {

   ret = -EOPNOTSUPP;
   goto err_mutex_unlock;
  } else if (msg[0].addr == 0x10) {

   if (msg[0].buf[0] == 0x00) {

    dev->page = msg[0].buf[1];
    ret = 0;
   } else {
    req.value = (msg[0].buf[0] << 8) |
     (msg[0].addr << 1);
    req.index = CMD_DEMOD_WR | dev->page;
    req.size = msg[0].len-1;
    req.data = &msg[0].buf[1];
    ret = rtl28xxu_ctrl_msg(d, &req);
   }
  } else if ((msg[0].len < 23) && (!dev->new_i2c_write)) {

   req.value = (msg[0].buf[0] << 8) | (msg[0].addr << 1);
   req.index = CMD_I2C_WR;
   req.size = msg[0].len-1;
   req.data = &msg[0].buf[1];
   ret = rtl28xxu_ctrl_msg(d, &req);
  } else {

   req.value = (msg[0].addr << 1);
   req.index = CMD_I2C_DA_WR;
   req.size = msg[0].len;
   req.data = msg[0].buf;
   ret = rtl28xxu_ctrl_msg(d, &req);
  }
 } else if (num == 1 && (msg[0].flags & I2C_M_RD)) {
  req.value = (msg[0].addr << 1);
  req.index = CMD_I2C_DA_RD;
  req.size = msg[0].len;
  req.data = msg[0].buf;
  ret = rtl28xxu_ctrl_msg(d, &req);
 } else {
  ret = -EOPNOTSUPP;
 }


 if (ret == -EPIPE)
  ret = -EAGAIN;

err_mutex_unlock:
 mutex_unlock(&d->i2c_mutex);

 return ret ? ret : num;
}
