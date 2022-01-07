
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;


 int D_USBI ;
 int R518_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_2 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int reg_r (struct sd*,int ) ;
 int reg_r8 (struct sd*,int ) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static int ov518_i2c_r(struct sd *sd, u8 reg)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int value;


 reg_w(sd, R51x_I2C_SADDR_2, reg);


 reg_w(sd, R518_I2C_CTL, 0x03);
 reg_r8(sd, R518_I2C_CTL);


 reg_w(sd, R518_I2C_CTL, 0x05);
 reg_r8(sd, R518_I2C_CTL);

 value = reg_r(sd, R51x_I2C_DATA);
 gspca_dbg(gspca_dev, D_USBI, "ov518_i2c_r %02x %02x\n", reg, value);
 return value;
}
