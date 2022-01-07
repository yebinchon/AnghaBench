
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct cx231xx {int dev; } ;


 int I2C_M_RD ;
 int dev_dbg (int ,char*,int,int,int *) ;
 int dev_err (int ,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int read_eeprom(struct cx231xx *dev, struct i2c_client *client,
         u8 *eedata, int len)
{
 int ret;
 u8 start_offset = 0;
 int len_todo = len;
 u8 *eedata_cur = eedata;
 int i;
 struct i2c_msg msg_write = { .addr = client->addr, .flags = 0,
  .buf = &start_offset, .len = 1 };
 struct i2c_msg msg_read = { .addr = client->addr, .flags = I2C_M_RD };


 ret = i2c_transfer(client->adapter, &msg_write, 1);
 if (ret < 0) {
  dev_err(dev->dev, "Can't read eeprom\n");
  return ret;
 }

 while (len_todo > 0) {
  msg_read.len = (len_todo > 64) ? 64 : len_todo;
  msg_read.buf = eedata_cur;

  ret = i2c_transfer(client->adapter, &msg_read, 1);
  if (ret < 0) {
   dev_err(dev->dev, "Can't read eeprom\n");
   return ret;
  }
  eedata_cur += msg_read.len;
  len_todo -= msg_read.len;
 }

 for (i = 0; i + 15 < len; i += 16)
  dev_dbg(dev->dev, "i2c eeprom %02x: %*ph\n",
   i, 16, &eedata[i]);

 return 0;
}
