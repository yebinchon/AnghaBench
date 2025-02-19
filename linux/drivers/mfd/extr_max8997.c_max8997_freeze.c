
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_dev {int * reg_dump; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MAX8997_MUIC_REG_END ;
 int MAX8997_REG_PMIC_END ;
 struct max8997_dev* i2c_get_clientdata (struct i2c_client*) ;
 int * max8997_dumpaddr_haptic ;
 int * max8997_dumpaddr_muic ;
 int * max8997_dumpaddr_pmic ;
 int max8997_read_reg (struct i2c_client*,int ,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max8997_freeze(struct device *dev)
{
 struct i2c_client *i2c = to_i2c_client(dev);
 struct max8997_dev *max8997 = i2c_get_clientdata(i2c);
 int i;

 for (i = 0; i < ARRAY_SIZE(max8997_dumpaddr_pmic); i++)
  max8997_read_reg(i2c, max8997_dumpaddr_pmic[i],
    &max8997->reg_dump[i]);

 for (i = 0; i < ARRAY_SIZE(max8997_dumpaddr_muic); i++)
  max8997_read_reg(i2c, max8997_dumpaddr_muic[i],
    &max8997->reg_dump[i + MAX8997_REG_PMIC_END]);

 for (i = 0; i < ARRAY_SIZE(max8997_dumpaddr_haptic); i++)
  max8997_read_reg(i2c, max8997_dumpaddr_haptic[i],
    &max8997->reg_dump[i + MAX8997_REG_PMIC_END +
    MAX8997_MUIC_REG_END]);

 return 0;
}
