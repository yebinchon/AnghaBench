
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int vstart; scalar_t__ hstart; } ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int i2c_w1 (struct gspca_dev*,int,int) ;
 int i2c_w1_buf (struct gspca_dev*,int ,int ) ;
 int msleep (int) ;
 int ov7670_init ;
 int pr_err (char*) ;

__attribute__((used)) static void ov7670_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_w1(gspca_dev, 0x12, 0x80);
 msleep(200);
 i2c_w1_buf(gspca_dev, ov7670_init, ARRAY_SIZE(ov7670_init));
 if (gspca_dev->usb_err < 0)
  pr_err("OV7670 sensor initialization failed\n");

 sd->hstart = 0;
 sd->vstart = 1;
}
