
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 scalar_t__ ET_I2C_BASE ;
 scalar_t__ ET_I2C_COUNT ;
 scalar_t__ ET_I2C_DATA0 ;
 scalar_t__ ET_I2C_REG ;
 int reg_w_val (struct gspca_dev*,scalar_t__,int const) ;

__attribute__((used)) static int i2c_w(struct gspca_dev *gspca_dev,
   __u8 reg,
   const __u8 *buffer,
   int len, __u8 mode)
{

 __u8 ptchcount;


 reg_w_val(gspca_dev, ET_I2C_BASE, 0x40);


 ptchcount = ((len & 0x07) << 4) | (mode & 0x03);
 reg_w_val(gspca_dev, ET_I2C_COUNT, ptchcount);

 reg_w_val(gspca_dev, ET_I2C_REG, reg);
 while (--len >= 0)
  reg_w_val(gspca_dev, ET_I2C_DATA0 + len, buffer[len]);
 return 0;
}
