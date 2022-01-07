
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_adapter {struct cx231xx_i2c* algo_data; } ;
struct cx231xx_i2c_xfer_data {int saddr_len; int saddr_dat; int buf_size; int* p_buffer; int direction; int dev_addr; } ;
struct cx231xx_i2c {int i2c_nostop; int i2c_reserve; struct cx231xx* dev; } ;
struct cx231xx {int xc_fw_load_done; int (* cx231xx_gpio_i2c_write ) (struct cx231xx*,int ,int*,int) ;int (* cx231xx_send_usb_command ) (struct cx231xx_i2c*,struct cx231xx_i2c_xfer_data*) ;} ;


 int TUNER_XC5000 ;
 int dprintk1 (int,char*,int ,int,int) ;
 scalar_t__ is_tuner (struct cx231xx*,struct cx231xx_i2c*,struct i2c_msg const*,int ) ;
 int stub1 (struct cx231xx*,int ,int*,int) ;
 int stub2 (struct cx231xx_i2c*,struct cx231xx_i2c_xfer_data*) ;
 int stub3 (struct cx231xx_i2c*,struct cx231xx_i2c_xfer_data*) ;

__attribute__((used)) static int cx231xx_i2c_send_bytes(struct i2c_adapter *i2c_adap,
      const struct i2c_msg *msg)
{
 struct cx231xx_i2c *bus = i2c_adap->algo_data;
 struct cx231xx *dev = bus->dev;
 struct cx231xx_i2c_xfer_data req_data;
 int status = 0;
 u16 size = 0;
 u8 loop = 0;
 u8 saddr_len = 1;
 u8 *buf_ptr = ((void*)0);
 u16 saddr = 0;
 u8 need_gpio = 0;

 if (is_tuner(dev, bus, msg, TUNER_XC5000)) {
  size = msg->len;

  if (size == 2) {


   return 0;
  } else if (size == 4) {
   if (msg->len >= 2)
    saddr = msg->buf[0] << 8 | msg->buf[1];
   else if (msg->len == 1)
    saddr = msg->buf[0];

   switch (saddr) {
   case 0x0000:
    need_gpio = 1;

    dev->xc_fw_load_done = 1;
    break;
   case 0x000D:
   case 0x0001:
   case 0x0002:
   case 0x0003:
    need_gpio = 1;
    break;
   default:
    if (dev->xc_fw_load_done)
     need_gpio = 1;
    break;
   }

   if (need_gpio) {
    dprintk1(1,
    "GPIO WRITE: addr 0x%x, len %d, saddr 0x%x\n",
    msg->addr, msg->len, saddr);

    return dev->cx231xx_gpio_i2c_write(dev,
           msg->addr,
           msg->buf,
           msg->len);
   }
  }


  saddr_len = 1;


  size -= saddr_len;
  buf_ptr = (u8 *) (msg->buf + 1);

  do {

   req_data.dev_addr = msg->addr;
   req_data.direction = msg->flags;
   req_data.saddr_len = saddr_len;
   req_data.saddr_dat = msg->buf[0];
   req_data.buf_size = size > 16 ? 16 : size;
   req_data.p_buffer = (u8 *) (buf_ptr + loop * 16);

   bus->i2c_nostop = (size > 16) ? 1 : 0;
   bus->i2c_reserve = (loop == 0) ? 0 : 1;


   status = dev->cx231xx_send_usb_command(bus, &req_data);
   loop++;

   if (size >= 16)
    size -= 16;
   else
    size = 0;

  } while (size > 0);

  bus->i2c_nostop = 0;
  bus->i2c_reserve = 0;

 } else {


  req_data.dev_addr = msg->addr;
  req_data.direction = msg->flags;
  req_data.saddr_len = 0;
  req_data.saddr_dat = 0;
  req_data.buf_size = msg->len;
  req_data.p_buffer = msg->buf;


  status = dev->cx231xx_send_usb_command(bus, &req_data);
 }

 return status < 0 ? status : 0;
}
