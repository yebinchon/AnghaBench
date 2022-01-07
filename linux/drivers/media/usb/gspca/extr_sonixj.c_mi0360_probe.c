
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sd {int sensor; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;


 int ARRAY_SIZE (scalar_t__ const***) ;
 int D_PROBE ;
 int SENSOR_MI0360B ;
 int SENSOR_MT9V111 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int i2c_w8 (struct gspca_dev*,scalar_t__ const*) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void mi0360_probe(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, j;
 u16 val = 0;
 static const u8 probe_tb[][4][8] = {
     {
  {0xb0, 0x5d, 0x07, 0x00, 0x02, 0x00, 0x00, 0x10},
  {0x90, 0x5d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10},
  {0xa2, 0x5d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10},
  {0xb0, 0x5d, 0x07, 0x00, 0x00, 0x00, 0x00, 0x10}
     },
     {
  {0xb0, 0x5c, 0x01, 0x00, 0x04, 0x00, 0x00, 0x10},
  {0x90, 0x5c, 0x36, 0x00, 0x00, 0x00, 0x00, 0x10},
  {0xa2, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10},
  {}
     },
 };

 for (i = 0; i < ARRAY_SIZE(probe_tb); i++) {
  reg_w1(gspca_dev, 0x17, 0x62);
  reg_w1(gspca_dev, 0x01, 0x08);
  for (j = 0; j < 3; j++)
   i2c_w8(gspca_dev, probe_tb[i][j]);
  msleep(2);
  reg_r(gspca_dev, 0x0a, 5);
  val = (gspca_dev->usb_buf[3] << 8) | gspca_dev->usb_buf[4];
  if (probe_tb[i][3][0] != 0)
   i2c_w8(gspca_dev, probe_tb[i][3]);
  reg_w1(gspca_dev, 0x01, 0x29);
  reg_w1(gspca_dev, 0x17, 0x42);
  if (val != 0xffff)
   break;
 }
 if (gspca_dev->usb_err < 0)
  return;
 switch (val) {
 case 0x8221:
  gspca_dbg(gspca_dev, D_PROBE, "Sensor mi0360b\n");
  sd->sensor = SENSOR_MI0360B;
  break;
 case 0x823a:
  gspca_dbg(gspca_dev, D_PROBE, "Sensor mt9v111\n");
  sd->sensor = SENSOR_MT9V111;
  break;
 case 0x8243:
  gspca_dbg(gspca_dev, D_PROBE, "Sensor mi0360\n");
  break;
 default:
  gspca_dbg(gspca_dev, D_PROBE, "Unknown sensor %04x - forced to mi0360\n",
     val);
  break;
 }
}
