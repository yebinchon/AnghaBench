
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int hstart; int vstart; } ;
struct gspca_dev {int usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int i2c_r2 (struct gspca_dev*,int,int*) ;
 int i2c_w1 (struct gspca_dev*,int,int) ;
 int i2c_w1_buf (struct gspca_dev*,int ,int ) ;
 int msleep (int) ;
 int ov9650_init ;
 int pr_err (char*,...) ;

__attribute__((used)) static void ov9650_init_sensor(struct gspca_dev *gspca_dev)
{
 u16 id;
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_r2(gspca_dev, 0x1c, &id);
 if (gspca_dev->usb_err < 0)
  return;

 if (id != 0x7fa2) {
  pr_err("sensor id for ov9650 doesn't match (0x%04x)\n", id);
  gspca_dev->usb_err = -ENODEV;
  return;
 }

 i2c_w1(gspca_dev, 0x12, 0x80);
 msleep(200);
 i2c_w1_buf(gspca_dev, ov9650_init, ARRAY_SIZE(ov9650_init));
 if (gspca_dev->usb_err < 0)
  pr_err("OV9650 sensor initialization failed\n");
 sd->hstart = 1;
 sd->vstart = 7;
}
