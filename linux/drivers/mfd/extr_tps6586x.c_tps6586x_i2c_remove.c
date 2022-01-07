
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int dev; } ;
struct i2c_client {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct tps6586x*) ;
 struct tps6586x* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int ) ;
 int tps6586x_remove_subdevs (struct tps6586x*) ;

__attribute__((used)) static int tps6586x_i2c_remove(struct i2c_client *client)
{
 struct tps6586x *tps6586x = i2c_get_clientdata(client);

 tps6586x_remove_subdevs(tps6586x);
 mfd_remove_devices(tps6586x->dev);
 if (client->irq)
  free_irq(client->irq, tps6586x);
 return 0;
}
