
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; int red; int blue; } ;
struct gspca_dev {int gain; int exposure; } ;
struct cmd {int member_1; int const member_0; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 int const CX0342_EXPO_LINE_H ;
 scalar_t__ SENSOR_CX0342 ;
 struct cmd const* cx0342_timing_seq ;
 int i2c_w (struct gspca_dev*,int const,int) ;
 int i2c_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int reg_w (struct gspca_dev*,int const,int) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int set_led (struct gspca_dev*,int) ;
 int set_resolution (struct gspca_dev*) ;
 int setexposure (struct gspca_dev*,int ,int ,int ,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void cx0342_6800_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const struct cmd reg_init[] = {

  {153, 0x9f},
  {154, 0x40},
  {156, 0x00},
  {135, 0x00},
  {134, 0x00},
  {133, 0xff},
  {132, 0x03},
  {131, 0x07},
  {130, 0x40},
  {128, 0x40},
  {151, 0x17},
  {150, 0x18},
  {143, 0x00},
  {142, 0x00},
  {141, 0x00},
  {140, 0x00},
  {139, 0x00},
  {138, 0x00},
  {137, 0x00},
  {136, 0x00},
  {152, 0x03},

  {149, 0x0b},
  {148, 0x8a},
  {147, 0x02},
  {146, 0x0e},
  {145, 0xf4},
  {144, 0x01},
  {129, 0x00},
  {155, 0x20},
 };
 static const struct cmd sensor_init[] = {
  {169, 0x07},
  {182, 0x58},
  {175, 0x16},
  {165, 0x16},
  {167, 0xc0},
  {168, 0x03},
  {163, 0xff},
  {164, 0x07},
  {173, 0xff},
  {174, 0x07},
  {161, 0x5c},
  {162, 0x01},
  {179, 0xfc},
  {180, 0x03},
  {177, 0x00},
  {178, 0x00},
  {158, 0x40},
  {176, 0x01},
  {181, 0x00},
  {158, 0x02},
  {172, 0x05},
  {184, 0x00},
  {183, 0x00},
  {170, 0x01},
  {157, 0x0b},
  {166, 0x0b},
  {171, 0x07},
  {159, 0x40},
  {160, 0x02},
 };

 reg_w_buf(gspca_dev, reg_init, ARRAY_SIZE(reg_init));
 i2c_w_buf(gspca_dev, sensor_init, ARRAY_SIZE(sensor_init));
 i2c_w_buf(gspca_dev, cx0342_timing_seq, ARRAY_SIZE(cx0342_timing_seq));
 reg_w(gspca_dev, 130, 0x10);
 reg_w(gspca_dev, 131, 0x00);
 i2c_w(gspca_dev, CX0342_EXPO_LINE_H, 0x00);
 i2c_w(gspca_dev, 158, 0x01);
 if (sd->sensor == SENSOR_CX0342)
  setexposure(gspca_dev, v4l2_ctrl_g_ctrl(gspca_dev->exposure),
   v4l2_ctrl_g_ctrl(gspca_dev->gain),
   v4l2_ctrl_g_ctrl(sd->blue),
   v4l2_ctrl_g_ctrl(sd->red));
 else
  setexposure(gspca_dev, v4l2_ctrl_g_ctrl(gspca_dev->exposure),
   v4l2_ctrl_g_ctrl(gspca_dev->gain), 0, 0);
 set_led(gspca_dev, 1);
 set_resolution(gspca_dev);
}
