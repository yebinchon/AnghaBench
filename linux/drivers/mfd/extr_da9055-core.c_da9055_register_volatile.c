
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool da9055_register_volatile(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 130:
 case 129:
 case 139:
 case 138:
 case 137:

 case 147:
 case 146:

 case 153:
 case 151:
 case 152:
 case 128:
 case 156:
 case 155:
 case 154:

 case 141:
 case 143:
 case 144:
 case 145:
 case 142:
 case 140:
 case 150:

 case 149:
 case 148:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
  return 1;
 default:
  return 0;
 }
}
