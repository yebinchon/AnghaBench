
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; int left; int top; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct mt9t001_platform_data {scalar_t__ clk_pol; } ;
struct mt9t001 {struct v4l2_rect crop; struct v4l2_mbus_framefmt format; } ;
struct TYPE_2__ {struct mt9t001_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 unsigned int DIV_ROUND_CLOSEST (int,int ) ;
 int MT9T001_COLUMN_ADDRESS_MODE ;
 int MT9T001_COLUMN_START ;
 int MT9T001_OUTPUT_CONTROL_CHIP_ENABLE ;
 int MT9T001_PIXEL_CLOCK ;
 int MT9T001_PIXEL_CLOCK_INVERT ;
 int MT9T001_ROW_ADDRESS_MODE ;
 int MT9T001_ROW_START ;
 int MT9T001_WINDOW_HEIGHT ;
 int MT9T001_WINDOW_WIDTH ;
 int mt9t001_set_output_control (struct mt9t001*,int const,int const) ;
 int mt9t001_write (struct i2c_client*,int ,int) ;
 struct mt9t001* to_mt9t001 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t001_s_stream(struct v4l2_subdev *subdev, int enable)
{
 const u16 mode = MT9T001_OUTPUT_CONTROL_CHIP_ENABLE;
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 struct mt9t001_platform_data *pdata = client->dev.platform_data;
 struct mt9t001 *mt9t001 = to_mt9t001(subdev);
 struct v4l2_mbus_framefmt *format = &mt9t001->format;
 struct v4l2_rect *crop = &mt9t001->crop;
 unsigned int hratio;
 unsigned int vratio;
 int ret;

 if (!enable)
  return mt9t001_set_output_control(mt9t001, mode, 0);


 if (pdata->clk_pol) {
  ret = mt9t001_write(client, MT9T001_PIXEL_CLOCK,
         MT9T001_PIXEL_CLOCK_INVERT);
  if (ret < 0)
   return ret;
 }


 hratio = DIV_ROUND_CLOSEST(crop->width, format->width);
 vratio = DIV_ROUND_CLOSEST(crop->height, format->height);

 ret = mt9t001_write(client, MT9T001_ROW_ADDRESS_MODE, hratio - 1);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_COLUMN_ADDRESS_MODE, vratio - 1);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_COLUMN_START, crop->left);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_ROW_START, crop->top);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_WINDOW_WIDTH, crop->width - 1);
 if (ret < 0)
  return ret;

 ret = mt9t001_write(client, MT9T001_WINDOW_HEIGHT, crop->height - 1);
 if (ret < 0)
  return ret;


 return mt9t001_set_output_control(mt9t001, 0, mode);
}
