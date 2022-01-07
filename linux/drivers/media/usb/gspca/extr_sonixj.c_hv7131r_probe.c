
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int i2c_r (struct gspca_dev*,int ,int) ;
 int i2c_w1 (struct gspca_dev*,int,int ) ;
 int msleep (int) ;
 int pr_warn (char*,int,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void hv7131r_probe(struct gspca_dev *gspca_dev)
{
 i2c_w1(gspca_dev, 0x02, 0);
 msleep(10);
 reg_w1(gspca_dev, 0x02, 0x66);
 msleep(10);
 i2c_r(gspca_dev, 0, 5);
 if (gspca_dev->usb_buf[0] == 0x02
     && gspca_dev->usb_buf[1] == 0x09
     && gspca_dev->usb_buf[2] == 0x01) {
  gspca_dbg(gspca_dev, D_PROBE, "Sensor HV7131R found\n");
  return;
 }
 pr_warn("Erroneous HV7131R ID 0x%02x 0x%02x 0x%02x\n",
  gspca_dev->usb_buf[0], gspca_dev->usb_buf[1],
  gspca_dev->usb_buf[2]);
}
