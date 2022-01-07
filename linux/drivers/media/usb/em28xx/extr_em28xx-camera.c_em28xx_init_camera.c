
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011_platform_data {int xtal; } ;
struct i2c_client {int addr; } ;
struct i2c_board_info {char* type; int addr; int flags; struct mt9v011_platform_data* platform_data; } ;
struct i2c_adapter {int dummy; } ;
struct em28xx_v4l2 {int sensor_xres; int sensor_yres; int sensor_xtal; int vinctl; int vinmode; int v4l2_dev; } ;
struct TYPE_4__ {int xclk; } ;
struct em28xx {size_t def_i2c_bus; int em28xx_sensor; TYPE_2__ board; struct em28xx_v4l2* v4l2; struct i2c_adapter* i2c_adap; struct i2c_client* i2c_client; } ;


 int EINVAL ;





 int EM28XX_R0F_XCLK ;
 int EM28XX_VINMODE_RGB8_BGGR ;
 int EM28XX_VINMODE_RGB8_GRBG ;
 int EM28XX_VINMODE_YUV422_UYVY ;
 int EM28XX_VINMODE_YUV422_YUYV ;
 int EM28XX_XCLK_FREQUENCY_24MHZ ;
 int EM28XX_XCLK_FREQUENCY_48MHZ ;
 int EM28XX_XCLK_FREQUENCY_4_3MHZ ;
 int ENODEV ;
 int I2C_CLIENT_SCCB ;
 int MEDIA_BUS_FMT_YUYV8_2X8 ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int em28xx_initialize_mt9m001 (struct em28xx*) ;
 int em28xx_initialize_mt9m111 (struct em28xx*) ;
 int em28xx_write_reg (struct em28xx*,int ,int ) ;
 int pad ;
 int set_fmt ;
 struct v4l2_subdev* v4l2_i2c_new_subdev_board (int *,struct i2c_adapter*,struct i2c_board_info*,int *) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;

int em28xx_init_camera(struct em28xx *dev)
{
 struct i2c_client *client = &dev->i2c_client[dev->def_i2c_bus];
 struct i2c_adapter *adap = &dev->i2c_adap[dev->def_i2c_bus];
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 switch (dev->em28xx_sensor) {
 case 130:
 {
  struct mt9v011_platform_data pdata;
  struct i2c_board_info mt9v011_info = {
   .type = "mt9v011",
   .addr = client->addr,
   .platform_data = &pdata,
  };

  v4l2->sensor_xres = 640;
  v4l2->sensor_yres = 480;
  dev->board.xclk = EM28XX_XCLK_FREQUENCY_4_3MHZ;
  em28xx_write_reg(dev, EM28XX_R0F_XCLK, dev->board.xclk);
  v4l2->sensor_xtal = 4300000;
  pdata.xtal = v4l2->sensor_xtal;
  if (((void*)0) ==
      v4l2_i2c_new_subdev_board(&v4l2->v4l2_dev, adap,
           &mt9v011_info, ((void*)0)))
   return -ENODEV;
  v4l2->vinmode = EM28XX_VINMODE_RGB8_GRBG;
  v4l2->vinctl = 0x00;

  break;
 }
 case 132:
  v4l2->sensor_xres = 1280;
  v4l2->sensor_yres = 1024;

  em28xx_initialize_mt9m001(dev);

  v4l2->vinmode = EM28XX_VINMODE_RGB8_BGGR;
  v4l2->vinctl = 0x00;

  break;
 case 131:
  v4l2->sensor_xres = 640;
  v4l2->sensor_yres = 512;

  dev->board.xclk = EM28XX_XCLK_FREQUENCY_48MHZ;
  em28xx_write_reg(dev, EM28XX_R0F_XCLK, dev->board.xclk);
  em28xx_initialize_mt9m111(dev);

  v4l2->vinmode = EM28XX_VINMODE_YUV422_UYVY;
  v4l2->vinctl = 0x00;

  break;
 case 128:
 {
  struct v4l2_subdev *subdev;
  struct i2c_board_info ov2640_info = {
   .type = "ov2640",
   .flags = I2C_CLIENT_SCCB,
   .addr = client->addr,
  };
  struct v4l2_subdev_format format = {
   .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  };
  v4l2->sensor_xres = 640;
  v4l2->sensor_yres = 480;

  subdev =
       v4l2_i2c_new_subdev_board(&v4l2->v4l2_dev, adap,
            &ov2640_info, ((void*)0));
  if (!subdev)
   return -ENODEV;

  format.format.code = MEDIA_BUS_FMT_YUYV8_2X8;
  format.format.width = 640;
  format.format.height = 480;
  v4l2_subdev_call(subdev, pad, set_fmt, ((void*)0), &format);


  dev->board.xclk = EM28XX_XCLK_FREQUENCY_24MHZ;
  em28xx_write_reg(dev, EM28XX_R0F_XCLK, dev->board.xclk);
  v4l2->vinmode = EM28XX_VINMODE_YUV422_YUYV;
  v4l2->vinctl = 0x00;

  break;
 }
 case 129:
 default:
  return -EINVAL;
 }

 return 0;
}
