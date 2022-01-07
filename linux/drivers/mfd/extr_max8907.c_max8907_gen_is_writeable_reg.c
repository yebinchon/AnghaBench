
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int max8907_gen_is_volatile_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool max8907_gen_is_writeable_reg(struct device *dev, unsigned int reg)
{
 return !max8907_gen_is_volatile_reg(dev, reg);
}
