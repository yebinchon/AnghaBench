
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sd {int i2c_addr; int sensor; } ;
struct TYPE_2__ {int input_flags; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; TYPE_1__ cam; } ;


 int D_PROBE ;
 int SENSOR_SOI768 ;
 int V4L2_IN_ST_HFLIP ;
 int V4L2_IN_ST_VFLIP ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int i2c_r (struct gspca_dev*,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void ov7630_probe(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 val;


 reg_w1(gspca_dev, 0x17, 0x62);
 reg_w1(gspca_dev, 0x01, 0x08);
 sd->i2c_addr = 0x21;
 i2c_r(gspca_dev, 0x0a, 2);
 val = (gspca_dev->usb_buf[3] << 8) | gspca_dev->usb_buf[4];
 reg_w1(gspca_dev, 0x01, 0x29);
 reg_w1(gspca_dev, 0x17, 0x42);
 if (gspca_dev->usb_err < 0)
  return;
 if (val == 0x7628) {
  sd->sensor = SENSOR_SOI768;

  gspca_dev->cam.input_flags =
    V4L2_IN_ST_VFLIP | V4L2_IN_ST_HFLIP;
  gspca_dbg(gspca_dev, D_PROBE, "Sensor soi768\n");
  return;
 }
 gspca_dbg(gspca_dev, D_PROBE, "Sensor ov%04x\n", val);
}
