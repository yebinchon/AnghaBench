
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mc13xxx {int regmap; int dev; } ;


 scalar_t__ BIT (int) ;
 int EINVAL ;
 int dev_vdbg (int ,char*,unsigned int,scalar_t__) ;
 int regmap_write (int ,unsigned int,scalar_t__) ;

int mc13xxx_reg_write(struct mc13xxx *mc13xxx, unsigned int offset, u32 val)
{
 dev_vdbg(mc13xxx->dev, "[0x%02x] <- 0x%06x\n", offset, val);

 if (val >= BIT(24))
  return -EINVAL;

 return regmap_write(mc13xxx->regmap, offset, val);
}
