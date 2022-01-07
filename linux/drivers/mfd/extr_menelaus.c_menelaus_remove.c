
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menelaus_chip {int work; } ;
struct i2c_client {int irq; } ;


 int flush_work (int *) ;
 int free_irq (int ,struct menelaus_chip*) ;
 struct menelaus_chip* i2c_get_clientdata (struct i2c_client*) ;
 int * the_menelaus ;

__attribute__((used)) static int menelaus_remove(struct i2c_client *client)
{
 struct menelaus_chip *menelaus = i2c_get_clientdata(client);

 free_irq(client->irq, menelaus);
 flush_work(&menelaus->work);
 the_menelaus = ((void*)0);
 return 0;
}
