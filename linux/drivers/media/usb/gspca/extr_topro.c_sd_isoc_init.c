
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ bridge; scalar_t__ sensor; } ;
struct gspca_dev {int usb_err; scalar_t__ curr_mode; } ;
struct cmd {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 scalar_t__ BRIDGE_TP6800 ;
 scalar_t__ SENSOR_CX0342 ;
 int TP6800_R12_SIF_ADDR_S ;

 int TP6800_R78_FORMAT ;
 int bulk_w (struct gspca_dev*,int,int ,int) ;
 int color_null ;
 int i2c_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int const,int) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const struct cmd cx_sensor_init[] = {
  {136, 0x81},
  {134, 0x37},
  {135, 0x01},
  {131, 0x00},
  {132, 0x00},
  {130, 0x00},
  {133, 0x00},
  {129, 0x81},
 };
 static const struct cmd cx_bridge_init[] = {
  {0x4d, 0x00},
  {0x4c, 0xff},
  {0x4e, 0xff},
  {0x4f, 0x00},
 };
 static const struct cmd ov_sensor_init[] = {
  {0x10, 0x75},
  {0x76, 0x03},
  {0x00, 0x00},
 };
 static const struct cmd ov_bridge_init[] = {
  {0x7b, 0x90},
  {128, 0x87},
 };

 if (sd->bridge == BRIDGE_TP6800)
  return 0;
 if (sd->sensor == SENSOR_CX0342) {
  reg_w(gspca_dev, TP6800_R12_SIF_ADDR_S, 0x20);
  reg_w(gspca_dev, 128, 0x87);
  i2c_w_buf(gspca_dev, cx_sensor_init,
    ARRAY_SIZE(cx_sensor_init));
  reg_w_buf(gspca_dev, cx_bridge_init,
    ARRAY_SIZE(cx_bridge_init));
  bulk_w(gspca_dev, 0x03, color_null, sizeof color_null);
  reg_w(gspca_dev, 0x59, 0x40);
 } else {
  reg_w(gspca_dev, TP6800_R12_SIF_ADDR_S, 0x21);
  i2c_w_buf(gspca_dev, ov_sensor_init,
    ARRAY_SIZE(ov_sensor_init));
  reg_r(gspca_dev, 0x7b);
  reg_w_buf(gspca_dev, ov_bridge_init,
    ARRAY_SIZE(ov_bridge_init));
 }
 reg_w(gspca_dev, TP6800_R78_FORMAT,
   gspca_dev->curr_mode ? 0x00 : 0x01);
 return gspca_dev->usb_err;
}
