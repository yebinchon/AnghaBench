
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t001 {int output_control; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9T001_OUTPUT_CONTROL_CHIP_ENABLE ;
 int MT9T001_OUTPUT_CONTROL_DEF ;
 int MT9T001_RESET ;
 int mt9t001_set_output_control (struct mt9t001*,int ,int ) ;
 int mt9t001_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9t001_reset(struct mt9t001 *mt9t001)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9t001->subdev);
 int ret;


 ret = mt9t001_write(client, MT9T001_RESET, 1);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_RESET, 0);
 if (ret < 0)
  return ret;

 mt9t001->output_control = MT9T001_OUTPUT_CONTROL_DEF;

 return mt9t001_set_output_control(mt9t001,
       MT9T001_OUTPUT_CONTROL_CHIP_ENABLE,
       0);
}
