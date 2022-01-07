
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 scalar_t__ const I2C0 ;
 int i2c_w (struct gspca_dev*,int,scalar_t__ const*,int) ;
 int reg_w (struct gspca_dev*,int,scalar_t__ const*,int) ;

__attribute__((used)) static void reg_w_buf(struct gspca_dev *gspca_dev,
   const u8 *cmd)
{
 u16 reg;
 int len;

 for (;;) {
  reg = *cmd++ << 8;
  reg += *cmd++;
  len = *cmd++;
  if (len == 0)
   break;
  if (cmd[-3] != I2C0)
   reg_w(gspca_dev, reg, cmd, len);
  else
   i2c_w(gspca_dev, reg, cmd, len);
  cmd += len;
 }
}
