
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas {scalar_t__* i2c_clients; int irq_data; int irq; } ;
struct i2c_client {int dummy; } ;


 int PALMAS_NUM_CLIENTS ;
 struct palmas* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (scalar_t__) ;
 struct palmas* palmas_dev ;
 int * pm_power_off ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int palmas_i2c_remove(struct i2c_client *i2c)
{
 struct palmas *palmas = i2c_get_clientdata(i2c);
 int i;

 regmap_del_irq_chip(palmas->irq, palmas->irq_data);

 for (i = 1; i < PALMAS_NUM_CLIENTS; i++) {
  if (palmas->i2c_clients[i])
   i2c_unregister_device(palmas->i2c_clients[i]);
 }

 if (palmas == palmas_dev) {
  pm_power_off = ((void*)0);
  palmas_dev = ((void*)0);
 }

 return 0;
}
