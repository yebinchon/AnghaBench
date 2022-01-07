
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65086 {int irq_data; int irq; } ;
struct i2c_client {int dummy; } ;


 struct tps65086* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int tps65086_remove(struct i2c_client *client)
{
 struct tps65086 *tps = i2c_get_clientdata(client);

 regmap_del_irq_chip(tps->irq, tps->irq_data);

 return 0;
}
