
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {int regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;

int twl6040_reg_read(struct twl6040 *twl6040, unsigned int reg)
{
 int ret;
 unsigned int val;

 ret = regmap_read(twl6040->regmap, reg, &val);
 if (ret < 0)
  return ret;

 return val;
}
