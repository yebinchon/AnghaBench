
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9p031 {int clk_div; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9P031_OUTPUT_CONTROL_CEN ;
 int MT9P031_PIXEL_CLOCK_CONTROL ;
 int MT9P031_PIXEL_CLOCK_DIVIDE (int ) ;
 int MT9P031_RST ;
 int MT9P031_RST_DISABLE ;
 int MT9P031_RST_ENABLE ;
 int mt9p031_set_output_control (struct mt9p031*,int ,int ) ;
 int mt9p031_write (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9p031_reset(struct mt9p031 *mt9p031)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9p031->subdev);
 int ret;


 ret = mt9p031_write(client, MT9P031_RST, MT9P031_RST_ENABLE);
 if (ret < 0)
  return ret;
 ret = mt9p031_write(client, MT9P031_RST, MT9P031_RST_DISABLE);
 if (ret < 0)
  return ret;

 ret = mt9p031_write(client, MT9P031_PIXEL_CLOCK_CONTROL,
       MT9P031_PIXEL_CLOCK_DIVIDE(mt9p031->clk_div));
 if (ret < 0)
  return ret;

 return mt9p031_set_output_control(mt9p031, MT9P031_OUTPUT_CONTROL_CEN,
       0);
}
