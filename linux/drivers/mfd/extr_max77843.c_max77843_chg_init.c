
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_dev {int i2c_chg; int regmap_chg; TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; int adapter; } ;


 int I2C_ADDR_CHG ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_regmap_init_i2c (int ,int *) ;
 int i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (int ,struct max77693_dev*) ;
 int i2c_unregister_device (int ) ;
 int max77843_charger_regmap_config ;

__attribute__((used)) static int max77843_chg_init(struct max77693_dev *max77843)
{
 int ret;

 max77843->i2c_chg = i2c_new_dummy_device(max77843->i2c->adapter, I2C_ADDR_CHG);
 if (IS_ERR(max77843->i2c_chg)) {
  dev_err(&max77843->i2c->dev,
    "Cannot allocate I2C device for Charger\n");
  return PTR_ERR(max77843->i2c_chg);
 }
 i2c_set_clientdata(max77843->i2c_chg, max77843);

 max77843->regmap_chg = devm_regmap_init_i2c(max77843->i2c_chg,
   &max77843_charger_regmap_config);
 if (IS_ERR(max77843->regmap_chg)) {
  ret = PTR_ERR(max77843->regmap_chg);
  goto err_chg_i2c;
 }

 return 0;

err_chg_i2c:
 i2c_unregister_device(max77843->i2c_chg);

 return ret;
}
