
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788 {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

int lp8788_write_byte(struct lp8788 *lp, u8 reg, u8 data)
{
 return regmap_write(lp->regmap, reg, data);
}
