
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M111_OPMODE_AUTOEXPO_EN ;
 int OPER_MODE_CTRL ;
 int V4L2_EXPOSURE_AUTO ;
 int reg_clear (int ,int ) ;
 int reg_set (int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_set_autoexposure(struct mt9m111 *mt9m111, int val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);

 if (val == V4L2_EXPOSURE_AUTO)
  return reg_set(OPER_MODE_CTRL, MT9M111_OPMODE_AUTOEXPO_EN);
 return reg_clear(OPER_MODE_CTRL, MT9M111_OPMODE_AUTOEXPO_EN);
}
