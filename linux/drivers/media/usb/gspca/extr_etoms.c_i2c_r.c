
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int ET_I2C_BASE ;
 int ET_I2C_COUNT ;
 int ET_I2C_DATA0 ;
 int ET_I2C_PREFETCH ;
 int ET_I2C_REG ;
 int reg_r (struct gspca_dev*,int ,int) ;
 int reg_w_val (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int i2c_r(struct gspca_dev *gspca_dev,
   __u8 reg)
{

 reg_w_val(gspca_dev, ET_I2C_BASE, 0x40);


 reg_w_val(gspca_dev, ET_I2C_COUNT, 0x11);
 reg_w_val(gspca_dev, ET_I2C_REG, reg);
 reg_w_val(gspca_dev, ET_I2C_PREFETCH, 0x02);
 reg_w_val(gspca_dev, ET_I2C_PREFETCH, 0x00);
 reg_r(gspca_dev, ET_I2C_DATA0, 1);
 return 0;
}
