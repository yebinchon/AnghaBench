
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int vstart; scalar_t__ hstart; } ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int hv7131r_init ;
 int i2c_w1_buf (struct gspca_dev*,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void hv7131r_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_w1_buf(gspca_dev, hv7131r_init, ARRAY_SIZE(hv7131r_init));
 if (gspca_dev->usb_err < 0)
  pr_err("HV7131R Sensor initialization failed\n");

 sd->hstart = 0;
 sd->vstart = 1;
}
