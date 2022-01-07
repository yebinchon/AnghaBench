
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int APBREG_BSR_SARAC ;
 unsigned int APBREG_PAER ;
 int sta2x11_apbreg_readable_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool sta2x11_apbreg_writeable_reg(struct device *dev, unsigned int reg)
{
 if (reg >= APBREG_BSR_SARAC)
  reg -= APBREG_BSR_SARAC;
 if (!sta2x11_apbreg_readable_reg(dev, reg))
  return 0;
 return reg != APBREG_PAER;
}
