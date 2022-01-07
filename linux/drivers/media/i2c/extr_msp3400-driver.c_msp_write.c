
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_dbg_lvl (int *,int,int ,char*,int,int,int) ;
 int dev_warn (int *,char*,...) ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 int msecs_to_jiffies (int) ;
 int msp_debug ;
 int msp_reset (struct i2c_client*) ;
 int schedule_timeout_interruptible (int ) ;

__attribute__((used)) static int msp_write(struct i2c_client *client, int dev, int addr, int val)
{
 int err;
 u8 buffer[5];

 buffer[0] = dev;
 buffer[1] = addr >> 8;
 buffer[2] = addr & 0xff;
 buffer[3] = val >> 8;
 buffer[4] = val & 0xff;

 dev_dbg_lvl(&client->dev, 3, msp_debug, "msp_write(0x%x, 0x%x, 0x%x)\n",
   dev, addr, val);
 for (err = 0; err < 3; err++) {
  if (i2c_master_send(client, buffer, 5) == 5)
   break;
  dev_warn(&client->dev, "I/O error #%d (write 0x%02x/0x%02x)\n", err,
         dev, addr);
  schedule_timeout_interruptible(msecs_to_jiffies(10));
 }
 if (err == 3) {
  dev_warn(&client->dev, "resetting chip, sound will go off.\n");
  msp_reset(client);
  return -1;
 }
 return 0;
}
