
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool encx24j600_regmap_precious(struct device *dev, unsigned int reg)
{

 if (((reg >= 0xc0) && (reg < 0xc8)) ||
     ((reg >= 0xca) && (reg < 0xf0)))
  return 1;
 else
  return 0;
}
