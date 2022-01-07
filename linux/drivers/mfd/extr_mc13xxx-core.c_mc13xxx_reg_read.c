
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13xxx {int dev; int regmap; } ;


 int dev_vdbg (int ,char*,unsigned int,int ) ;
 int regmap_read (int ,unsigned int,int *) ;

int mc13xxx_reg_read(struct mc13xxx *mc13xxx, unsigned int offset, u32 *val)
{
 int ret;

 ret = regmap_read(mc13xxx->regmap, offset, val);
 dev_vdbg(mc13xxx->dev, "[0x%02x] -> 0x%06x\n", offset, *val);

 return ret;
}
