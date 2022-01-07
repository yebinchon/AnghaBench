
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool altr_a10sr_reg_readable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 130:
 case 140:
 case 138:
 case 139:
 case 136:
 case 135:
 case 134:
 case 143:
 case 142:
 case 131:
 case 133:
 case 132:
 case 141:
 case 129:
 case 128:
 case 137:
  return 1;
 default:
  return 0;
 }
}
