
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int regmap; } ;


 int DA9052_CONTROL_B_REG ;
 int DA9052_CONTROL_B_WRITEMODE ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int da9052_i2c_disable_multiwrite(struct da9052 *da9052)
{
 int reg_val, ret;

 ret = regmap_read(da9052->regmap, DA9052_CONTROL_B_REG, &reg_val);
 if (ret < 0)
  return ret;

 if (!(reg_val & DA9052_CONTROL_B_WRITEMODE)) {
  reg_val |= DA9052_CONTROL_B_WRITEMODE;
  ret = regmap_write(da9052->regmap, DA9052_CONTROL_B_REG,
       reg_val);
  if (ret < 0)
   return ret;
 }

 return 0;
}
