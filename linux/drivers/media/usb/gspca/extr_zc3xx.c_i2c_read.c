
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int msleep (int) ;
 int pr_err (char*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static u16 i2c_read(struct gspca_dev *gspca_dev,
   u8 reg)
{
 u8 retbyte;
 u16 retval;

 if (gspca_dev->usb_err < 0)
  return 0;
 reg_w(gspca_dev, reg, 0x0092);
 reg_w(gspca_dev, 0x02, 0x0090);
 msleep(20);
 retbyte = reg_r(gspca_dev, 0x0091);
 if (retbyte != 0x00)
  pr_err("i2c_r status error %02x\n", retbyte);
 retval = reg_r(gspca_dev, 0x0095);
 retval |= reg_r(gspca_dev, 0x0096) << 8;
 return retval;
}
