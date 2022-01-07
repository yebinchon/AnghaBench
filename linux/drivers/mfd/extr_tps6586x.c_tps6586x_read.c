
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct tps6586x {int regmap; } ;
struct device {int dummy; } ;


 struct tps6586x* dev_to_tps6586x (struct device*) ;
 int regmap_read (int ,int,unsigned int*) ;

int tps6586x_read(struct device *dev, int reg, uint8_t *val)
{
 struct tps6586x *tps6586x = dev_to_tps6586x(dev);
 unsigned int rval;
 int ret;

 ret = regmap_read(tps6586x->regmap, reg, &rval);
 if (!ret)
  *val = rval;
 return ret;
}
