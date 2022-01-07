
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp3943 {int regmap; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;

int lp3943_update_bits(struct lp3943 *lp3943, u8 reg, u8 mask, u8 data)
{
 return regmap_update_bits(lp3943->regmap, reg, mask, data);
}
