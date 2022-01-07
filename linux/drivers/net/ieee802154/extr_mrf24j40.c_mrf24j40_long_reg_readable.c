
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;






 int mrf24j40_long_reg_writeable (struct device*,unsigned int) ;

__attribute__((used)) static bool
mrf24j40_long_reg_readable(struct device *dev, unsigned int reg)
{
 bool rc;


 rc = mrf24j40_long_reg_writeable(dev, reg);
 if (rc)
  return rc;


 switch (reg) {
 case 129:
 case 128:
 case 131:
 case 130:
  return 1;
 default:
  return 0;
 }
}
