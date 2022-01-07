
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int MAX77802_REG_INT1 ;
 unsigned int MAX77802_REG_INT2 ;
 unsigned int MAX77802_REG_INTSRC ;

__attribute__((used)) static bool max77802_pmic_is_precious_reg(struct device *dev, unsigned int reg)
{
 return (reg == MAX77802_REG_INTSRC || reg == MAX77802_REG_INT1 ||
  reg == MAX77802_REG_INT2);
}
