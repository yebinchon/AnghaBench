
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int mcr20a_dar_writeable (struct device*,unsigned int) ;

__attribute__((used)) static bool
mcr20a_dar_readable(struct device *dev, unsigned int reg)
{
 bool rc;


 rc = mcr20a_dar_writeable(dev, reg);
 if (rc)
  return rc;


 switch (reg) {
 case 132:
 case 138:
 case 137:
 case 136:
 case 135:
 case 130:
 case 129:
 case 128:
 case 131:
 case 134:
 case 133:
  return 1;
 default:
  return 0;
 }
}
