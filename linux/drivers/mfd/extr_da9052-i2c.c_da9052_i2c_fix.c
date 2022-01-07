
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int chip_id; int regmap; } ;



 int DA9052_PARK_REGISTER ;




 int i2c_safe_reg (unsigned char) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int da9052_i2c_fix(struct da9052 *da9052, unsigned char reg)
{
 int val;

 switch (da9052->chip_id) {
 case 132:
 case 131:
 case 130:
 case 129:

  if (!i2c_safe_reg(reg))
   return regmap_read(da9052->regmap,
        DA9052_PARK_REGISTER,
        &val);
  break;
 case 128:
 default:




  break;
 }

 return 0;
}
