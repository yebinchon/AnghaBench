
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sharpness; int gamma; } ;
struct gspca_dev {int alt; scalar_t__ curr_mode; } ;
struct cmd {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 size_t SENSOR_CX0342 ;






 int TP6800_R3F_FRAME_RATE ;
 int TP6800_R78_FORMAT ;


 int bulk_w (struct gspca_dev*,int,struct cmd const*,int ) ;
 struct cmd const** color_gain ;
 int i2c_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int set_led (struct gspca_dev*,int) ;
 int setgamma (struct gspca_dev*,int ) ;
 int setsharpness (struct gspca_dev*,int ) ;
 struct cmd const* tp6810_bridge_start ;
 struct cmd const* tp6810_cx_init_common ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void cx0342_6810_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const struct cmd sensor_init_2[] = {
  {148, 0x6f},
  {149, 0x02},
  {141, 0x00},
  {142, 0x00},
  {140, 0x00},
  {143, 0x00},
  {137, 0x81},
 };
 static const struct cmd bridge_init_2[] = {
  {0x4d, 0x00},
  {0x4c, 0xff},
  {0x4e, 0xff},
  {0x4f, 0x00},
  {128, 0x00},
  {129, 0x04},
  {129, 0x01},
 };
 static const struct cmd bridge_init_3[] = {
  {135, 0x08},
  {134, 0x87},
  {133, 0x02},
  {132, 0x0e},
  {131, 0xf4},
  {130, 0x01},
 };
 static const struct cmd sensor_init_3[] = {
  {150, 0x81},
  {148, 0x6f},
  {149, 0x02},
  {141, 0x00},
  {142, 0x00},
  {140, 0x00},
  {143, 0x00},
  {137, 0x81},
 };
 static const struct cmd bridge_init_5[] = {
  {0x4d, 0x00},
  {0x4c, 0xff},
  {0x4e, 0xff},
  {0x4f, 0x00},
 };
 static const struct cmd sensor_init_4[] = {
  {148, 0xd3},
  {149, 0x01},

  {141, 0x40},
  {142, 0x40},
  {140, 0x40},
  {143, 0x40},
  {137, 0x81},
 };
 static const struct cmd sensor_init_5[] = {
  {147, 0x05},
  {152, 0x00},
  {151, 0x00},
  {145, 0x01},
  {136, 0x0b},
  {144, 0x0b},
  {146, 0x07},
  {138, 0x40},
  {139, 0x02},
  {150, 0x81},
 };

 reg_w(gspca_dev, 0x22, gspca_dev->alt);
 i2c_w_buf(gspca_dev, sensor_init_2, ARRAY_SIZE(sensor_init_2));
 reg_w_buf(gspca_dev, bridge_init_2, ARRAY_SIZE(bridge_init_2));
 reg_w_buf(gspca_dev, tp6810_cx_init_common,
   ARRAY_SIZE(tp6810_cx_init_common));
 reg_w_buf(gspca_dev, bridge_init_3, ARRAY_SIZE(bridge_init_3));
 if (gspca_dev->curr_mode) {
  reg_w(gspca_dev, 0x4a, 0x7f);
  reg_w(gspca_dev, 0x07, 0x05);
  reg_w(gspca_dev, TP6800_R78_FORMAT, 0x00);
 } else {
  reg_w(gspca_dev, 0x4a, 0xff);
  reg_w(gspca_dev, 0x07, 0x85);
  reg_w(gspca_dev, TP6800_R78_FORMAT, 0x01);
 }
 setgamma(gspca_dev, v4l2_ctrl_g_ctrl(sd->gamma));
 reg_w_buf(gspca_dev, tp6810_bridge_start,
   ARRAY_SIZE(tp6810_bridge_start));
 setsharpness(gspca_dev, v4l2_ctrl_g_ctrl(sd->sharpness));
 bulk_w(gspca_dev, 0x03, color_gain[SENSOR_CX0342],
    ARRAY_SIZE(color_gain[0]));
 reg_w(gspca_dev, TP6800_R3F_FRAME_RATE, 0x87);
 i2c_w_buf(gspca_dev, sensor_init_3, ARRAY_SIZE(sensor_init_3));
 reg_w_buf(gspca_dev, bridge_init_5, ARRAY_SIZE(bridge_init_5));
 i2c_w_buf(gspca_dev, sensor_init_4, ARRAY_SIZE(sensor_init_4));
 reg_w_buf(gspca_dev, bridge_init_5, ARRAY_SIZE(bridge_init_5));
 i2c_w_buf(gspca_dev, sensor_init_5, ARRAY_SIZE(sensor_init_5));

 set_led(gspca_dev, 1);

}
