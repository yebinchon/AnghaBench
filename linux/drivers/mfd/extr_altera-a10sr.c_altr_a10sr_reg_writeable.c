
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool altr_a10sr_reg_writeable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 135:
 case 134:
 case 137:
 case 136:
 case 130:
 case 132:
 case 131:
 case 129:
 case 128:
 case 133:
  return 1;
 default:
  return 0;
 }
}
