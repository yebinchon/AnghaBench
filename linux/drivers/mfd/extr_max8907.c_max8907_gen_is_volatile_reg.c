
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool max8907_gen_is_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 130:
 case 128:
 case 129:
 case 133:
 case 132:
 case 131:
  return 1;
 default:
  return 0;
 }
}
