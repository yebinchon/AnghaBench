
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
struct cmd {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 int TP6800_R12_SIF_ADDR_S ;





 struct cmd const* cx0342_timing_seq ;
 int i2c_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int reg_w (struct gspca_dev*,int ,int) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 struct cmd const* tp6810_cx_init_common ;

__attribute__((used)) static void cx0342_6810_init(struct gspca_dev *gspca_dev)
{
 static const struct cmd reg_init_1[] = {
  {130, 0x2f},
  {0x25, 0x02},
  {131, 0x00},
  {129, 0x80},
  {130, 0x2f},
  {132, 0xe1},
  {132, 0xc1},
  {132, 0xe1},
  {133, 0x00},
 };
 static const struct cmd reg_init_2[] = {
  {128, 0x48},
  {133, 0x00},
 };
 static const struct cmd sensor_init[] = {
  {147, 0x07},
  {160, 0x58},
  {153, 0x28},
  {143, 0x28},
  {145, 0x50},
  {146, 0x03},
  {141, 0xff},
  {142, 0x07},
  {151, 0xff},
  {152, 0x07},
  {139, 0x5c},
  {140, 0x01},
  {157, 0xfc},
  {158, 0x03},
  {155, 0x00},
  {156, 0x00},
  {136, 0x40},
  {154, 0x01},
  {159, 0x00},
  {136, 0x02},
  {150, 0x05},
  {163, 0x00},
  {162, 0x00},
  {148, 0x01},
  {134, 0x0b},
  {144, 0x0b},
  {149, 0x07},
  {137, 0x40},
  {138, 0x02},

  {161, 0x81},
  {135, 0x01},
 };

 reg_w_buf(gspca_dev, reg_init_1, ARRAY_SIZE(reg_init_1));
 reg_w_buf(gspca_dev, tp6810_cx_init_common,
   ARRAY_SIZE(tp6810_cx_init_common));
 reg_w_buf(gspca_dev, reg_init_2, ARRAY_SIZE(reg_init_2));

 reg_w(gspca_dev, TP6800_R12_SIF_ADDR_S, 0x20);
 i2c_w_buf(gspca_dev, sensor_init, ARRAY_SIZE(sensor_init));
 i2c_w_buf(gspca_dev, cx0342_timing_seq, ARRAY_SIZE(cx0342_timing_seq));
}
