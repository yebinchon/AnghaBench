
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {size_t sensor; int gamma; int jpegqual; int red; int blue; int sharpness; } ;
struct gspca_dev {int gain; int exposure; } ;
struct cmd {int const member_0; int member_1; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 size_t SENSOR_CX0342 ;
 size_t SENSOR_SOI763A ;
 int bulk_w (struct gspca_dev*,int,struct cmd const*,int ) ;
 struct cmd const** color_gain ;
 int i2c_w (struct gspca_dev*,int,int) ;
 int i2c_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int const,int) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int set_led (struct gspca_dev*,int) ;
 int setexposure (struct gspca_dev*,int ,int ,int ,int ) ;
 int setgamma (struct gspca_dev*,int ) ;
 int setquality (struct gspca_dev*,int ) ;
 int setsharpness (struct gspca_dev*,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void soi763a_6800_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const struct cmd reg_init[] = {
  {129, 0x04},
  {129, 0x01},
  {158, 0x00},

  {137, 0x00},
  {136, 0x00},
  {135, 0xff},
  {134, 0x03},
  {133, 0x07},
  {132, 0x40},

  {129, 0x03},
  {128, 0x40},

  {154, 0x46},
  {153, 0x10},
  {146, 0x00},
  {145, 0x00},
  {144, 0x00},
  {143, 0x00},
  {142, 0x00},
  {141, 0x00},
  {140, 0x00},
  {139, 0x00},
  {155, 0x03},

  {138, 0x04},
  {131, 0x0e},

  {152, 0x1b},
  {151, 0x9a},
  {150, 0x02},
  {149, 0x0f},
  {148, 0xf4},
  {147, 0x01},
  {130, 0x01},
  {157, 0x21},
  {156, 0x00},
 };
 static const struct cmd sensor_init[] = {
  {0x12, 0x48},
  {0x13, 0xa0},
  {0x03, 0xa4},
  {0x04, 0x30},
  {0x05, 0x88},
  {0x06, 0x60},
  {0x10, 0x41},
  {0x11, 0x40},
  {0x13, 0xa0},
  {0x14, 0x00},
  {0x15, 0x14},
  {0x1f, 0x41},
  {0x20, 0x80},
  {0x23, 0xee},
  {0x24, 0x50},
  {0x25, 0x7a},
  {0x26, 0x00},
  {0x27, 0xe2},
  {0x28, 0xb0},
  {0x2a, 0x00},
  {0x2b, 0x00},
  {0x2d, 0x81},
  {0x2f, 0x9d},
  {0x60, 0x80},
  {0x61, 0x00},
  {0x62, 0x88},
  {0x63, 0x11},
  {0x64, 0x89},
  {0x65, 0x00},
  {0x67, 0x94},
  {0x68, 0x7a},
  {0x69, 0x0f},
  {0x6c, 0x80},
  {0x6d, 0x80},
  {0x6e, 0x80},
  {0x6f, 0xff},
  {0x71, 0x20},
  {0x74, 0x20},
  {0x75, 0x86},
  {0x77, 0xb5},
  {0x17, 0x18},
  {0x18, 0xbf},
  {0x19, 0x03},
  {0x1a, 0xf8},
  {0x01, 0x80},
  {0x02, 0x80},
 };

 reg_w_buf(gspca_dev, reg_init, ARRAY_SIZE(reg_init));

 i2c_w(gspca_dev, 0x12, 0x80);
 msleep(10);

 i2c_w_buf(gspca_dev, sensor_init, ARRAY_SIZE(sensor_init));

 reg_w(gspca_dev, 132, 0x10);
 reg_w(gspca_dev, 133, 0x00);

 setsharpness(gspca_dev, v4l2_ctrl_g_ctrl(sd->sharpness));

 bulk_w(gspca_dev, 0x03, color_gain[SENSOR_SOI763A],
    ARRAY_SIZE(color_gain[0]));

 set_led(gspca_dev, 1);
 if (sd->sensor == SENSOR_CX0342)
  setexposure(gspca_dev, v4l2_ctrl_g_ctrl(gspca_dev->exposure),
   v4l2_ctrl_g_ctrl(gspca_dev->gain),
   v4l2_ctrl_g_ctrl(sd->blue),
   v4l2_ctrl_g_ctrl(sd->red));
 else
  setexposure(gspca_dev, v4l2_ctrl_g_ctrl(gspca_dev->exposure),
   v4l2_ctrl_g_ctrl(gspca_dev->gain), 0, 0);
 if (sd->sensor == SENSOR_SOI763A)
  setquality(gspca_dev, v4l2_ctrl_g_ctrl(sd->jpegqual));
 setgamma(gspca_dev, v4l2_ctrl_g_ctrl(sd->gamma));
}
