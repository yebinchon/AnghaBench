
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int regmap; } ;


 int regmap_update_bits (int ,unsigned int,int ,int ) ;

int twl6040_set_bits(struct twl6040 *twl6040, unsigned int reg, u8 mask)
{
 return regmap_update_bits(twl6040->regmap, reg, mask, mask);
}
