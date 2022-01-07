
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int I2C_M_RD ;
 int dev_dbg_lvl (int *,int,int ,char*,int,int,int) ;
 int dev_warn (int *,char*,...) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msecs_to_jiffies (int) ;
 int msp_debug ;
 int msp_reset (struct i2c_client*) ;
 int schedule_timeout_interruptible (int ) ;

__attribute__((used)) static int msp_read(struct i2c_client *client, int dev, int addr)
{
 int err, retval;
 u8 write[3];
 u8 read[2];
 struct i2c_msg msgs[2] = {
  {
   .addr = client->addr,
   .len = 3,
   .buf = write
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 2,
   .buf = read
  }
 };

 write[0] = dev + 1;
 write[1] = addr >> 8;
 write[2] = addr & 0xff;

 for (err = 0; err < 3; err++) {
  if (i2c_transfer(client->adapter, msgs, 2) == 2)
   break;
  dev_warn(&client->dev, "I/O error #%d (read 0x%02x/0x%02x)\n", err,
         dev, addr);
  schedule_timeout_interruptible(msecs_to_jiffies(10));
 }
 if (err == 3) {
  dev_warn(&client->dev, "resetting chip, sound will go off.\n");
  msp_reset(client);
  return -1;
 }
 retval = read[0] << 8 | read[1];
 dev_dbg_lvl(&client->dev, 3, msp_debug, "msp_read(0x%x, 0x%x): 0x%x\n",
   dev, addr, retval);
 return retval;
}
