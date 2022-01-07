
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool encx24j600_regmap_writeable(struct device *dev, unsigned int reg)
{
 if ((reg < 0x12) ||
     ((reg >= 0x14) && (reg < 0x1a)) ||
     ((reg >= 0x1c) && (reg < 0x36)) ||
     ((reg >= 0x40) && (reg < 0x4c)) ||
     ((reg >= 0x52) && (reg < 0x56)) ||
     ((reg >= 0x60) && (reg < 0x68)) ||
     ((reg >= 0x6c) && (reg < 0x80)) ||
     ((reg >= 0x86) && (reg < 0x92)) ||
     ((reg >= 0xc0) && (reg < 0xc8)) ||
     ((reg >= 0xca) && (reg < 0xf0)))
  return 1;
 else
  return 0;
}
