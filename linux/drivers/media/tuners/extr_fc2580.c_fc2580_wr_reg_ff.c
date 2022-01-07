
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fc2580_dev {int regmap; } ;


 int regmap_write (int ,int,int) ;

__attribute__((used)) static int fc2580_wr_reg_ff(struct fc2580_dev *dev, u8 reg, u8 val)
{
 if (val == 0xff)
  return 0;
 else
  return regmap_write(dev->regmap, reg, val);
}
