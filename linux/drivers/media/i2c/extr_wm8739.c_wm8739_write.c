
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int TOT_REGS ;
 int debug ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,int,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int wm8739_write(struct v4l2_subdev *sd, int reg, u16 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int i;

 if (reg < 0 || reg >= TOT_REGS) {
  v4l2_err(sd, "Invalid register R%d\n", reg);
  return -1;
 }

 v4l2_dbg(1, debug, sd, "write: %02x %02x\n", reg, val);

 for (i = 0; i < 3; i++)
  if (i2c_smbus_write_byte_data(client,
    (reg << 1) | (val >> 8), val & 0xff) == 0)
   return 0;
 v4l2_err(sd, "I2C: cannot write %03x to register R%d\n", val, reg);
 return -1;
}
