
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dev; } ;
struct tvp5150 {int dev_id; int rom_ver; int regmap; struct v4l2_subdev sd; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int dev; } ;
struct TYPE_2__ {int name; } ;


 int TVP5150_MSB_DEV_ID ;
 int TVP5150_REV_SELECT ;
 int dev_err (int *,char*,int) ;
 int dev_info (int ,char*,...) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_write (int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_detect_version(struct tvp5150 *core)
{
 struct v4l2_subdev *sd = &core->sd;
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 u8 regs[4];
 int res;





 res = regmap_bulk_read(core->regmap, TVP5150_MSB_DEV_ID, regs, 4);
 if (res < 0) {
  dev_err(&c->dev, "reading ID registers failed: %d\n", res);
  return res;
 }

 core->dev_id = (regs[0] << 8) | regs[1];
 core->rom_ver = (regs[2] << 8) | regs[3];

 dev_info(sd->dev, "tvp%04x (%u.%u) chip found @ 0x%02x (%s)\n",
    core->dev_id, regs[2], regs[3], c->addr << 1,
    c->adapter->name);

 if (core->dev_id == 0x5150 && core->rom_ver == 0x0321) {
  dev_info(sd->dev, "tvp5150a detected.\n");
 } else if (core->dev_id == 0x5150 && core->rom_ver == 0x0400) {
  dev_info(sd->dev, "tvp5150am1 detected.\n");


  regmap_write(core->regmap, TVP5150_REV_SELECT, 0);
 } else if (core->dev_id == 0x5151 && core->rom_ver == 0x0100) {
  dev_info(sd->dev, "tvp5151 detected.\n");
 } else {
  dev_info(sd->dev, "*** unknown tvp%04x chip detected.\n",
     core->dev_id);
 }

 return 0;
}
