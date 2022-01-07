
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



 unsigned int APBREG_BSR_SARAC ;







__attribute__((used)) static bool sta2x11_apbreg_readable_reg(struct device *dev, unsigned int reg)
{

 if (reg >= APBREG_BSR_SARAC)
  reg -= APBREG_BSR_SARAC;
 switch (reg) {
 case 134:
 case 132:
 case 128:
 case 130:
 case 131:
 case 129:
 case 133:
  return 1;
 default:
  return 0;
 }
}
