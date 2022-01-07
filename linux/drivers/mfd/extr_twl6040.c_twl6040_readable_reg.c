
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool twl6040_readable_reg(struct device *dev, unsigned int reg)
{

 if (!reg)
  return 0;
 return 1;
}
