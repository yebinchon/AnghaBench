
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int msleep (int) ;
 int pr_err (char*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static u8 i2c_write(struct gspca_dev *gspca_dev,
   u8 reg,
   u8 valL,
   u8 valH)
{
 u8 retbyte;

 if (gspca_dev->usb_err < 0)
  return 0;
 reg_w(gspca_dev, reg, 0x92);
 reg_w(gspca_dev, valL, 0x93);
 reg_w(gspca_dev, valH, 0x94);
 reg_w(gspca_dev, 0x01, 0x90);
 msleep(1);
 retbyte = reg_r(gspca_dev, 0x0091);
 if (retbyte != 0x00)
  pr_err("i2c_w status error %02x\n", retbyte);
 return retbyte;
}
