
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int ** handlers; } ;


 int menelaus_disable_irq (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

__attribute__((used)) static int menelaus_remove_irq_work(int irq)
{
 int ret = 0;

 mutex_lock(&the_menelaus->lock);
 ret = menelaus_disable_irq(irq);
 the_menelaus->handlers[irq] = ((void*)0);
 mutex_unlock(&the_menelaus->lock);

 return ret;
}
