
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool twl4030_49_nop_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 0x00:
 case 0x03:
 case 0x40:
 case 0x41:
 case 0x42:
  return 0;
 default:
  return 1;
 }
}
