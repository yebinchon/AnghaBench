
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct twl6040 {int regmap; } ;


 int TWL6040_REG_VIBCTLL ;
 int TWL6040_REG_VIBCTLR ;
 unsigned int TWL6040_VIBENA ;
 unsigned int TWL6040_VIBSEL ;
 int regmap_read (int ,int ,unsigned int*) ;

int twl6040_get_vibralr_status(struct twl6040 *twl6040)
{
 unsigned int reg;
 int ret;
 u8 status;

 ret = regmap_read(twl6040->regmap, TWL6040_REG_VIBCTLL, &reg);
 if (ret != 0)
  return ret;
 status = reg;

 ret = regmap_read(twl6040->regmap, TWL6040_REG_VIBCTLR, &reg);
 if (ret != 0)
  return ret;
 status |= reg;

 status &= (TWL6040_VIBENA | TWL6040_VIBSEL);

 return status;
}
