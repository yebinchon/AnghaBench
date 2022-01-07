
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int sensor; int i2c_addr; } ;
struct gspca_dev {int dummy; } ;





 int i2c_w8 (struct gspca_dev*,int*) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int) ;

__attribute__((used)) static void i2c_r(struct gspca_dev *gspca_dev, u8 reg, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 mode[8];

 switch (sd->sensor) {
 case 130:
 case 128:
 case 129:
  mode[0] = 0x80 | 0x10;
  break;
 default:
  mode[0] = 0x81 | 0x10;
  break;
 }
 mode[1] = sd->i2c_addr;
 mode[2] = reg;
 mode[3] = 0;
 mode[4] = 0;
 mode[5] = 0;
 mode[6] = 0;
 mode[7] = 0x10;
 i2c_w8(gspca_dev, mode);
 msleep(2);
 mode[0] = (mode[0] & 0x81) | (len << 4) | 0x02;
 mode[2] = 0;
 i2c_w8(gspca_dev, mode);
 msleep(2);
 reg_r(gspca_dev, 0x0a, 5);
}
