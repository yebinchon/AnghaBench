
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int at86rf230_reg_writeable (struct device*,unsigned int) ;

__attribute__((used)) static bool
at86rf230_reg_readable(struct device *dev, unsigned int reg)
{
 bool rc;


 rc = at86rf230_reg_writeable(dev, reg);
 if (rc)
  return rc;


 switch (reg) {
 case 129:
 case 130:
 case 134:
 case 131:
 case 128:
 case 132:
 case 133:
  return 1;
 default:
  return 0;
 }
}
