
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk808 {int * pm_pwroff_prep_fn; int * pm_pwroff_fn; int irq_data; } ;
struct i2c_client {int irq; } ;


 struct rk808* i2c_get_clientdata (struct i2c_client*) ;
 int * pm_power_off ;
 int * pm_power_off_prepare ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int rk808_remove(struct i2c_client *client)
{
 struct rk808 *rk808 = i2c_get_clientdata(client);

 regmap_del_irq_chip(client->irq, rk808->irq_data);





 if (rk808->pm_pwroff_fn && pm_power_off == rk808->pm_pwroff_fn)
  pm_power_off = ((void*)0);




 if (rk808->pm_pwroff_prep_fn &&
     pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
  pm_power_off_prepare = ((void*)0);

 return 0;
}
