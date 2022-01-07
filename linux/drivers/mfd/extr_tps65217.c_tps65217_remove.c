
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int * irq_domain; } ;
struct i2c_client {int dummy; } ;


 int TPS65217_NUM_IRQ ;
 struct tps65217* i2c_get_clientdata (struct i2c_client*) ;
 int irq_dispose_mapping (unsigned int) ;
 int irq_domain_remove (int *) ;
 unsigned int irq_find_mapping (int *,int) ;

__attribute__((used)) static int tps65217_remove(struct i2c_client *client)
{
 struct tps65217 *tps = i2c_get_clientdata(client);
 unsigned int virq;
 int i;

 for (i = 0; i < TPS65217_NUM_IRQ; i++) {
  virq = irq_find_mapping(tps->irq_domain, i);
  if (virq)
   irq_dispose_mapping(virq);
 }

 irq_domain_remove(tps->irq_domain);
 tps->irq_domain = ((void*)0);

 return 0;
}
