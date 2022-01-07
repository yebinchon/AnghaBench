
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct da9150 {int dummy; } ;


 int DA9150_CONFIG_D ;
 int DA9150_CONTROL_C ;
 int DA9150_DISABLE_MASK ;
 int DA9150_WKUP_PM_EN_MASK ;
 int da9150_set_bits (struct da9150*,int ,int ,int ) ;
 struct da9150* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void da9150_shutdown(struct i2c_client *client)
{
 struct da9150 *da9150 = i2c_get_clientdata(client);


 da9150_set_bits(da9150, DA9150_CONFIG_D,
   DA9150_WKUP_PM_EN_MASK,
   DA9150_WKUP_PM_EN_MASK);


 da9150_set_bits(da9150, DA9150_CONTROL_C,
   DA9150_DISABLE_MASK, DA9150_DISABLE_MASK);
}
