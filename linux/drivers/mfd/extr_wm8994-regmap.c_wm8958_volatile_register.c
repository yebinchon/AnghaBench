
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int wm8994_volatile_register (struct device*,unsigned int) ;

__attribute__((used)) static bool wm8958_volatile_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 144:
 case 141:
 case 143:
 case 142:
 case 138:
 case 139:
 case 145:
 case 140:
 case 148:
 case 147:
 case 146:
 case 136:
 case 137:
 case 134:
 case 135:
 case 132:
 case 133:
 case 130:
 case 131:
 case 128:
 case 129:
  return 1;
 default:
  return wm8994_volatile_register(dev, reg);
 }
}
