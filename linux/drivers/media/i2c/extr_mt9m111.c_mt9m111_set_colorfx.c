
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int member_1; int id; int value; int member_0; } ;
struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (struct v4l2_control const*) ;
 int EINVAL ;
 int MT9M111_EFFECTS_MODE ;
 int MT9M111_EFFECTS_MODE_MASK ;





 int mt9m111_reg_mask (struct i2c_client*,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_set_colorfx(struct mt9m111 *mt9m111, int val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 static const struct v4l2_control colorfx[] = {
  { 130, 0 },
  { 132, 1 },
  { 129, 2 },
  { 131, 3 },
  { 128, 4 },
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(colorfx); i++) {
  if (colorfx[i].id == val) {
   return mt9m111_reg_mask(client, MT9M111_EFFECTS_MODE,
      colorfx[i].value,
      MT9M111_EFFECTS_MODE_MASK);
  }
 }

 return -EINVAL;
}
