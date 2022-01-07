
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps6586x {int regmap; } ;
struct device {int dummy; } ;


 struct tps6586x* dev_to_tps6586x (struct device*) ;
 int regmap_bulk_write (int ,int,int *,int) ;

int tps6586x_writes(struct device *dev, int reg, int len, uint8_t *val)
{
 struct tps6586x *tps6586x = dev_to_tps6586x(dev);

 return regmap_bulk_write(tps6586x->regmap, reg, val, len);
}
