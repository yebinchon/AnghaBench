
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_pmic_dev {int device_type; int regmap_pmic; int dev; TYPE_1__* pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int manual_poweroff; } ;



 unsigned int S2MPS11_CTRL1_PWRHOLD_MASK ;
 unsigned int S2MPS11_REG_CTRL1 ;
 int dev_warn (int ,char*,int) ;
 struct sec_pmic_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void sec_pmic_shutdown(struct i2c_client *i2c)
{
 struct sec_pmic_dev *sec_pmic = i2c_get_clientdata(i2c);
 unsigned int reg, mask;

 if (!sec_pmic->pdata->manual_poweroff)
  return;

 switch (sec_pmic->device_type) {
 case 128:
  reg = S2MPS11_REG_CTRL1;
  mask = S2MPS11_CTRL1_PWRHOLD_MASK;
  break;
 default:




  dev_warn(sec_pmic->dev,
   "Unsupported device %lu for manual power off\n",
   sec_pmic->device_type);
  return;
 }

 regmap_update_bits(sec_pmic->regmap_pmic, reg, mask, 0);
}
