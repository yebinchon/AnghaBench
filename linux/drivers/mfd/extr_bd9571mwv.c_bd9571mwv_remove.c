
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bd9571mwv {int irq_data; int irq; } ;


 struct bd9571mwv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int bd9571mwv_remove(struct i2c_client *client)
{
 struct bd9571mwv *bd = i2c_get_clientdata(client);

 regmap_del_irq_chip(bd->irq, bd->irq_data);

 return 0;
}
