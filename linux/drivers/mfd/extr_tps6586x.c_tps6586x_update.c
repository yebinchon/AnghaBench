
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps6586x {int regmap; } ;
struct device {int dummy; } ;


 struct tps6586x* dev_to_tps6586x (struct device*) ;
 int regmap_update_bits (int ,int,int ,int ) ;

int tps6586x_update(struct device *dev, int reg, uint8_t val, uint8_t mask)
{
 struct tps6586x *tps6586x = dev_to_tps6586x(dev);

 return regmap_update_bits(tps6586x->regmap, reg, mask, val);
}
