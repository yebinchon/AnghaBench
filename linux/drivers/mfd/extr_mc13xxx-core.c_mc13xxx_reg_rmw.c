
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13xxx {int regmap; int dev; } ;


 int BUG_ON (int) ;
 int dev_vdbg (int ,char*,unsigned int,int,int) ;
 int regmap_update_bits (int ,unsigned int,int,int) ;

int mc13xxx_reg_rmw(struct mc13xxx *mc13xxx, unsigned int offset,
  u32 mask, u32 val)
{
 BUG_ON(val & ~mask);
 dev_vdbg(mc13xxx->dev, "[0x%02x] <- 0x%06x (mask: 0x%06x)\n",
   offset, val, mask);

 return regmap_update_bits(mc13xxx->regmap, offset, mask, val);
}
