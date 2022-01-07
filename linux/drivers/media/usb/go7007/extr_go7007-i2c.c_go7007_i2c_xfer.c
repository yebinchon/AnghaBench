
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct go7007 {scalar_t__ status; scalar_t__ board_id; int hw_lock; int dev; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ GO7007_BOARDID_ADLINK_MPG24 ;
 int I2C_CTRL_REG_ADDR ;
 int I2C_DATA_REG_ADDR ;
 int I2C_DEV_UP_ADDR_REG_ADDR ;
 int I2C_LO_ADDR_REG_ADDR ;
 int I2C_READ_READY_MASK ;
 int I2C_STATE_MASK ;
 int STATUS_REG_ADDR ;
 scalar_t__ STATUS_SHUTDOWN ;
 int adlink_mpg24_i2c_lock ;
 int dev_dbg (int ,char*,int,int,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ go7007_read_addr (struct go7007*,int,int*) ;
 int go7007_write_addr (struct go7007*,int,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int go7007_i2c_xfer(struct go7007 *go, u16 addr, int read,
  u16 command, int flags, u8 *data)
{
 int i, ret = -EIO;
 u16 val;

 if (go->status == STATUS_SHUTDOWN)
  return -ENODEV;
 mutex_lock(&go->hw_lock);

 if (go->board_id == GO7007_BOARDID_ADLINK_MPG24) {

  mutex_lock(&adlink_mpg24_i2c_lock);
  go7007_write_addr(go, 0x3c82, 0x0020);
 }


 for (i = 0; i < 10; ++i) {
  if (go7007_read_addr(go, STATUS_REG_ADDR, &val) < 0)
   goto i2c_done;
  if (!(val & I2C_STATE_MASK))
   break;
  msleep(100);
 }
 if (i == 10) {
  dev_err(go->dev, "go7007-i2c: I2C adapter is hung\n");
  goto i2c_done;
 }


 go7007_write_addr(go, I2C_CTRL_REG_ADDR, flags);
 go7007_write_addr(go, I2C_LO_ADDR_REG_ADDR, command);


 if (!read) {
  go7007_write_addr(go, I2C_DATA_REG_ADDR, *data);
  go7007_write_addr(go, I2C_DEV_UP_ADDR_REG_ADDR,
     (addr << 9) | (command >> 8));
  ret = 0;
  goto i2c_done;
 }


 if (go7007_read_addr(go, I2C_DATA_REG_ADDR, &val) < 0)
  goto i2c_done;


 go7007_write_addr(go, I2C_DEV_UP_ADDR_REG_ADDR,
   (addr << 9) | 0x0100 | (command >> 8));


 for (i = 0; i < 10; ++i) {
  if (go7007_read_addr(go, STATUS_REG_ADDR, &val) < 0)
   goto i2c_done;
  if (val & I2C_READ_READY_MASK)
   break;
  msleep(100);
 }
 if (i == 10) {
  dev_err(go->dev, "go7007-i2c: I2C adapter is hung\n");
  goto i2c_done;
 }


 if (go7007_read_addr(go, I2C_DATA_REG_ADDR, &val) < 0)
  goto i2c_done;
 *data = val;
 ret = 0;

i2c_done:
 if (go->board_id == GO7007_BOARDID_ADLINK_MPG24) {

  go7007_write_addr(go, 0x3c82, 0x0000);
  mutex_unlock(&adlink_mpg24_i2c_lock);
 }
 mutex_unlock(&go->hw_lock);
 return ret;
}
