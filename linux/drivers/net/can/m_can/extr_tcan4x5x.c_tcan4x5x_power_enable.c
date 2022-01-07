
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct regulator*) ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;

__attribute__((used)) static int tcan4x5x_power_enable(struct regulator *reg, int enable)
{
 if (IS_ERR_OR_NULL(reg))
  return 0;

 if (enable)
  return regulator_enable(reg);
 else
  return regulator_disable(reg);
}
