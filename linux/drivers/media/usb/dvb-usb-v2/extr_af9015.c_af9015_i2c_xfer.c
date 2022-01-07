
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef void* u16 ;
struct usb_interface {int dev; } ;
struct req_t {scalar_t__ i2c_addr; size_t mbox; size_t addr_len; size_t data_len; size_t* data; void* addr; void* cmd; } ;
struct i2c_msg {int len; int flags; int* buf; scalar_t__ addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {scalar_t__* af9013_i2c_addr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int I2C_M_RD ;
 void* READ_I2C ;
 void* READ_MEMORY ;
 void* WRITE_I2C ;
 void* WRITE_MEMORY ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int af9015_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
      int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret;
 u16 addr;
 u8 mbox, addr_len;
 struct req_t req;
 if (msg[0].len == 0 || msg[0].flags & I2C_M_RD) {
  addr = 0x0000;
  mbox = 0;
  addr_len = 0;
 } else if (msg[0].len == 1) {
  addr = msg[0].buf[0];
  mbox = 0;
  addr_len = 1;
 } else if (msg[0].len == 2) {
  addr = msg[0].buf[0] << 8 | msg[0].buf[1] << 0;
  mbox = 0;
  addr_len = 2;
 } else {
  addr = msg[0].buf[0] << 8 | msg[0].buf[1] << 0;
  mbox = msg[0].buf[2];
  addr_len = 3;
 }

 if (num == 1 && !(msg[0].flags & I2C_M_RD)) {

  if (msg[0].len > 21) {
   ret = -EOPNOTSUPP;
   goto err;
  }
  if (msg[0].addr == state->af9013_i2c_addr[0])
   req.cmd = WRITE_MEMORY;
  else
   req.cmd = WRITE_I2C;
  req.i2c_addr = msg[0].addr;
  req.addr = addr;
  req.mbox = mbox;
  req.addr_len = addr_len;
  req.data_len = msg[0].len - addr_len;
  req.data = &msg[0].buf[addr_len];
  ret = af9015_ctrl_msg(d, &req);
 } else if (num == 2 && !(msg[0].flags & I2C_M_RD) &&
     (msg[1].flags & I2C_M_RD)) {

  if (msg[0].len > 3 || msg[1].len > 61) {
   ret = -EOPNOTSUPP;
   goto err;
  }
  if (msg[0].addr == state->af9013_i2c_addr[0])
   req.cmd = READ_MEMORY;
  else
   req.cmd = READ_I2C;
  req.i2c_addr = msg[0].addr;
  req.addr = addr;
  req.mbox = mbox;
  req.addr_len = addr_len;
  req.data_len = msg[1].len;
  req.data = &msg[1].buf[0];
  ret = af9015_ctrl_msg(d, &req);
 } else if (num == 1 && (msg[0].flags & I2C_M_RD)) {

  if (msg[0].len > 61) {
   ret = -EOPNOTSUPP;
   goto err;
  }
  if (msg[0].addr == state->af9013_i2c_addr[0]) {
   ret = -EINVAL;
   goto err;
  }
  req.cmd = READ_I2C;
  req.i2c_addr = msg[0].addr;
  req.addr = addr;
  req.mbox = mbox;
  req.addr_len = addr_len;
  req.data_len = msg[0].len;
  req.data = &msg[0].buf[0];
  ret = af9015_ctrl_msg(d, &req);
 } else {
  ret = -EOPNOTSUPP;
  dev_dbg(&intf->dev, "unknown msg, num %u\n", num);
 }
 if (ret)
  goto err;

 return num;
err:
 dev_dbg(&intf->dev, "failed %d\n", ret);
 return ret;
}
