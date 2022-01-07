
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct mt9m001_reg {int member_1; int member_0; } ;
struct TYPE_2__ {scalar_t__ height; int width; int top; int left; } ;
struct mt9m001 {scalar_t__ y_skip_top; TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (struct mt9m001_reg const*) ;
 int MT9M001_COLUMN_START ;
 int MT9M001_DEFAULT_HBLANK ;
 int MT9M001_DEFAULT_VBLANK ;
 int MT9M001_HORIZONTAL_BLANKING ;
 int MT9M001_ROW_START ;
 int MT9M001_VERTICAL_BLANKING ;
 int MT9M001_WINDOW_HEIGHT ;
 int MT9M001_WINDOW_WIDTH ;
 int multi_reg_write (struct i2c_client*,struct mt9m001_reg const*,int ) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_apply_selection(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 const struct mt9m001_reg regs[] = {

  { MT9M001_HORIZONTAL_BLANKING, MT9M001_DEFAULT_HBLANK },
  { MT9M001_VERTICAL_BLANKING, MT9M001_DEFAULT_VBLANK },




  { MT9M001_COLUMN_START, mt9m001->rect.left },
  { MT9M001_ROW_START, mt9m001->rect.top },
  { MT9M001_WINDOW_WIDTH, mt9m001->rect.width - 1 },
  { MT9M001_WINDOW_HEIGHT,
   mt9m001->rect.height + mt9m001->y_skip_top - 1 },
 };

 return multi_reg_write(client, regs, ARRAY_SIZE(regs));
}
