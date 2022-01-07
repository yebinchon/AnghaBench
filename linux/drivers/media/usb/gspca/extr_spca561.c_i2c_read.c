
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int __u8 ;
typedef int __u16 ;


 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static int i2c_read(struct gspca_dev *gspca_dev, __u16 reg, __u8 mode)
{
 int retry = 60;
 __u8 value;

 reg_w_val(gspca_dev, 0x8804, 0x92);
 reg_w_val(gspca_dev, 0x8801, reg);
 reg_w_val(gspca_dev, 0x8802, mode | 0x01);
 do {
  reg_r(gspca_dev, 0x8803, 1);
  if (!gspca_dev->usb_buf[0]) {
   reg_r(gspca_dev, 0x8800, 1);
   value = gspca_dev->usb_buf[0];
   reg_r(gspca_dev, 0x8805, 1);
   return ((int) value << 8) | gspca_dev->usb_buf[0];
  }
  msleep(10);
 } while (--retry);
 return -1;
}
