
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;

int tps65217_reg_read(struct tps65217 *tps, unsigned int reg,
   unsigned int *val)
{
 return regmap_read(tps->regmap, reg, val);
}
