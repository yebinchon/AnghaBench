
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
typedef int u8 ;
struct v4l2_subdev {int dev; } ;
struct tvp5150 {int norm; int regmap; } ;
struct TYPE_2__ {unsigned int vbi_type; int ini_line; int end_line; } ;
struct i2c_vbi_ram_value {TYPE_1__ type; } ;


 int ARRAY_SIZE (struct i2c_vbi_ram_value*) ;
 int TVP5150_LINE_MODE_INI ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_ALL ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int,unsigned int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 struct i2c_vbi_ram_value* vbi_ram_default ;

__attribute__((used)) static int tvp5150_set_vbi(struct v4l2_subdev *sd,
   unsigned int type, u8 flags, int line,
   const int fields)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 v4l2_std_id std = decoder->norm;
 u8 reg;
 int i, pos = 0;

 if (std == V4L2_STD_ALL) {
  dev_err(sd->dev, "VBI can't be configured without knowing number of lines\n");
  return 0;
 } else if (std & V4L2_STD_625_50) {

  line += 3;
 }

 if (line < 6 || line > 27)
  return 0;

 for (i = 0; i < ARRAY_SIZE(vbi_ram_default); i++) {
  const struct i2c_vbi_ram_value *regs = &vbi_ram_default[i];

  if (!regs->type.vbi_type)
   continue;

  if ((type & regs->type.vbi_type) &&
      (line >= regs->type.ini_line) &&
      (line <= regs->type.end_line))
   break;
  pos++;
 }

 type = pos | (flags & 0xf0);
 reg = ((line - 6) << 1) + TVP5150_LINE_MODE_INI;

 if (fields & 1)
  regmap_write(decoder->regmap, reg, type);

 if (fields & 2)
  regmap_write(decoder->regmap, reg + 1, type);

 return type;
}
