
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int i2c_addr; int hstart; int vstart; int sensor; } ;
struct gspca_dev {int usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int SENSOR_MT9V011 ;
 int SENSOR_MT9V111 ;
 int SENSOR_MT9V112 ;
 int i2c_r2 (struct gspca_dev*,int,int*) ;
 int i2c_w2 (struct gspca_dev*,int,int) ;
 int i2c_w2_buf (struct gspca_dev*,int ,int ) ;
 int mt9v011_init ;
 int mt9v111_init ;
 int mt9v112_init ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static void mt9v_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 value;

 sd->i2c_addr = 0x5d;
 i2c_r2(gspca_dev, 0xff, &value);
 if (gspca_dev->usb_err >= 0
  && value == 0x8243) {
  i2c_w2_buf(gspca_dev, mt9v011_init, ARRAY_SIZE(mt9v011_init));
  if (gspca_dev->usb_err < 0) {
   pr_err("MT9V011 sensor initialization failed\n");
   return;
  }
  sd->hstart = 2;
  sd->vstart = 2;
  sd->sensor = SENSOR_MT9V011;
  pr_info("MT9V011 sensor detected\n");
  return;
 }

 gspca_dev->usb_err = 0;
 sd->i2c_addr = 0x5c;
 i2c_w2(gspca_dev, 0x01, 0x0004);
 i2c_r2(gspca_dev, 0xff, &value);
 if (gspca_dev->usb_err >= 0
  && value == 0x823a) {
  i2c_w2_buf(gspca_dev, mt9v111_init, ARRAY_SIZE(mt9v111_init));
  if (gspca_dev->usb_err < 0) {
   pr_err("MT9V111 sensor initialization failed\n");
   return;
  }
  sd->hstart = 2;
  sd->vstart = 2;
  sd->sensor = SENSOR_MT9V111;
  pr_info("MT9V111 sensor detected\n");
  return;
 }

 gspca_dev->usb_err = 0;
 sd->i2c_addr = 0x5d;
 i2c_w2(gspca_dev, 0xf0, 0x0000);
 if (gspca_dev->usb_err < 0) {
  gspca_dev->usb_err = 0;
  sd->i2c_addr = 0x48;
  i2c_w2(gspca_dev, 0xf0, 0x0000);
 }
 i2c_r2(gspca_dev, 0x00, &value);
 if (gspca_dev->usb_err >= 0
  && value == 0x1229) {
  i2c_w2_buf(gspca_dev, mt9v112_init, ARRAY_SIZE(mt9v112_init));
  if (gspca_dev->usb_err < 0) {
   pr_err("MT9V112 sensor initialization failed\n");
   return;
  }
  sd->hstart = 6;
  sd->vstart = 2;
  sd->sensor = SENSOR_MT9V112;
  pr_info("MT9V112 sensor detected\n");
  return;
 }

 gspca_dev->usb_err = -ENODEV;
}
