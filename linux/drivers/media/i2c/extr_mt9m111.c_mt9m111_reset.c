
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M111_RESET_RESET_MODE ;
 int MT9M111_RESET_RESET_SOC ;
 int RESET ;
 int reg_clear (int ,int) ;
 int reg_set (int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_reset(struct mt9m111 *mt9m111)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 int ret;

 ret = reg_set(RESET, MT9M111_RESET_RESET_MODE);
 if (!ret)
  ret = reg_set(RESET, MT9M111_RESET_RESET_SOC);
 if (!ret)
  ret = reg_clear(RESET, MT9M111_RESET_RESET_MODE
    | MT9M111_RESET_RESET_SOC);

 return ret;
}
