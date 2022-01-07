
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smiapp_sensor {TYPE_2__* hwcfg; TYPE_1__* src; } ;
struct smiapp_reg_8 {int member_0; int member_1; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int ext_clk; } ;
struct TYPE_3__ {int sd; } ;


 int ARRAY_SIZE (struct smiapp_reg_8 const*) ;
 int dev_warn (int *,char*,int) ;
 int smiapp_write_8s (struct smiapp_sensor*,struct smiapp_reg_8 const*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int jt8ev1_post_poweron(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;
 static const struct smiapp_reg_8 regs[] = {
  { 0x3031, 0xcd },
  { 0x30a3, 0xd0 },
  { 0x3237, 0x00 },
  { 0x3238, 0x43 },
  { 0x3301, 0x06 },
  { 0x3302, 0x06 },
  { 0x3304, 0x00 },
  { 0x3305, 0x88 },
  { 0x332a, 0x14 },
  { 0x332c, 0x6b },
  { 0x3336, 0x01 },
  { 0x333f, 0x1f },
  { 0x3355, 0x00 },
  { 0x3356, 0x20 },
  { 0x33bf, 0x20 },
  { 0x33c9, 0x20 },
  { 0x33ce, 0x30 },
  { 0x33cf, 0xec },
  { 0x3328, 0x80 },
 };
 static const struct smiapp_reg_8 regs_96[] = {
  { 0x30ae, 0x00 },
  { 0x30af, 0xd0 },
  { 0x30b0, 0x01 },
 };

 rval = smiapp_write_8s(sensor, regs, ARRAY_SIZE(regs));
 if (rval < 0)
  return rval;

 switch (sensor->hwcfg->ext_clk) {
 case 9600000:
  return smiapp_write_8s(sensor, regs_96,
           ARRAY_SIZE(regs_96));
 default:
  dev_warn(&client->dev, "no MSRs for %d Hz ext_clk\n",
    sensor->hwcfg->ext_clk);
  return 0;
 }
}
