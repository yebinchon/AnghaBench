
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt9p031 {int output_control; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9P031_OUTPUT_CONTROL ;
 int mt9p031_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9p031_set_output_control(struct mt9p031 *mt9p031, u16 clear,
          u16 set)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9p031->subdev);
 u16 value = (mt9p031->output_control & ~clear) | set;
 int ret;

 ret = mt9p031_write(client, MT9P031_OUTPUT_CONTROL, value);
 if (ret < 0)
  return ret;

 mt9p031->output_control = value;
 return 0;
}
