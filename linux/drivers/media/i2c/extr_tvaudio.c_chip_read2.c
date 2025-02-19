
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int EIO ;
 int I2C_M_RD ;
 int debug ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,unsigned char) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int chip_read2(struct CHIPSTATE *chip, int subaddr)
{
 struct v4l2_subdev *sd = &chip->sd;
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 int rc;
 unsigned char write[1];
 unsigned char read[1];
 struct i2c_msg msgs[2] = {
  {
   .addr = c->addr,
   .len = 1,
   .buf = write
  },
  {
   .addr = c->addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = read
  }
 };

 write[0] = subaddr;

 rc = i2c_transfer(c->adapter, msgs, 2);
 if (rc != 2) {
  v4l2_warn(sd, "I/O error (read2)\n");
  if (rc < 0)
   return rc;
  return -EIO;
 }
 v4l2_dbg(1, debug, sd, "chip_read2: reg%d=0x%x\n",
  subaddr, read[0]);
 return read[0];
}
