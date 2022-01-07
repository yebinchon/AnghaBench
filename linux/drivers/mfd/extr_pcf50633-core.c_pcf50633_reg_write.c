
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

int pcf50633_reg_write(struct pcf50633 *pcf, u8 reg, u8 val)
{
 return regmap_write(pcf->regmap, reg, val);
}
