
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dev; } ;
struct v4l2_sliced_vbi_cap {int service_set; int ** service_lines; } ;
struct TYPE_2__ {int ini_line; int end_line; int vbi_type; } ;
struct i2c_vbi_ram_value {TYPE_1__ type; } ;


 int ARRAY_SIZE (struct i2c_vbi_ram_value*) ;
 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*) ;
 int memset (struct v4l2_sliced_vbi_cap*,int ,int) ;
 struct i2c_vbi_ram_value* vbi_ram_default ;

__attribute__((used)) static int tvp5150_g_sliced_vbi_cap(struct v4l2_subdev *sd,
    struct v4l2_sliced_vbi_cap *cap)
{
 int line, i;

 dev_dbg_lvl(sd->dev, 1, debug, "g_sliced_vbi_cap\n");
 memset(cap, 0, sizeof(*cap));

 for (i = 0; i < ARRAY_SIZE(vbi_ram_default); i++) {
  const struct i2c_vbi_ram_value *regs = &vbi_ram_default[i];

  if (!regs->type.vbi_type)
   continue;

  for (line = regs->type.ini_line;
       line <= regs->type.end_line;
       line++) {
   cap->service_lines[0][line] |= regs->type.vbi_type;
  }
  cap->service_set |= regs->type.vbi_type;
 }
 return 0;
}
