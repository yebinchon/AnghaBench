
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sge_uld_txq {TYPE_1__ sendq; scalar_t__ full; } ;


 int service_ofldq (struct sge_uld_txq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void restart_ofldq(unsigned long data)
{
 struct sge_uld_txq *q = (struct sge_uld_txq *)data;

 spin_lock(&q->sendq.lock);
 q->full = 0;
 service_ofldq(q);
 spin_unlock(&q->sendq.lock);
}
