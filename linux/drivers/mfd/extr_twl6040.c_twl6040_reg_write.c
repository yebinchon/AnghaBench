
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int regmap; } ;


 int regmap_write (int ,unsigned int,int ) ;

int twl6040_reg_write(struct twl6040 *twl6040, unsigned int reg, u8 val)
{
 int ret;

 ret = regmap_write(twl6040->regmap, reg, val);

 return ret;
}
