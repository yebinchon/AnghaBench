
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp3943 {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

int lp3943_write_byte(struct lp3943 *lp3943, u8 reg, u8 data)
{
 return regmap_write(lp3943->regmap, reg, data);
}
