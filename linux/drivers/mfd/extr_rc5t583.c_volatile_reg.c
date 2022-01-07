
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;





 unsigned int RC5T583_GPIO_GPOFUNC ;
 unsigned int RC5T583_GPIO_IOSEL ;
 unsigned int RC5T583_REG_DC0CTL ;
 unsigned int RC5T583_REG_LDO9DAC_DS ;
 unsigned int RC5T583_REG_LDOEN1 ;
 unsigned int RC5T583_REG_SR3CTL ;
 unsigned int RC5T583_SLPSEQ1 ;
 unsigned int RC5T583_SLPSEQ11 ;

__attribute__((used)) static bool volatile_reg(struct device *dev, unsigned int reg)
{

 switch (reg) {
 case 129:
 case 128:
 case 131:
 case 130:
 case 134:
 case 133:
 case 132:
 case 137:
 case 136:
 case 138:
  return 0;

 case 135:

  return 1;

 default:

  if ((reg >= RC5T583_GPIO_IOSEL) &&
    (reg <= RC5T583_GPIO_GPOFUNC))
   return 0;


  if ((reg >= RC5T583_SLPSEQ1) && (reg <= RC5T583_SLPSEQ11))
   return 0;


  if ((reg >= RC5T583_REG_DC0CTL) && (reg <= RC5T583_REG_SR3CTL))
   return 0;
  if ((reg >= RC5T583_REG_LDOEN1) &&
     (reg <= RC5T583_REG_LDO9DAC_DS))
   return 0;

  break;
 }

 return 1;
}
