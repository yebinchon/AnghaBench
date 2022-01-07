
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ddb_irq {void (* handler ) (void*) ;void* data; } ;
struct ddb {TYPE_1__* link; } ;
struct TYPE_2__ {struct ddb_irq* irq; } ;



struct ddb_irq *ddb_irq_set(struct ddb *dev, u32 link, u32 nr,
       void (*handler)(void *), void *data)
{
 struct ddb_irq *irq = &dev->link[link].irq[nr];

 irq->handler = handler;
 irq->data = data;
 return irq;
}
