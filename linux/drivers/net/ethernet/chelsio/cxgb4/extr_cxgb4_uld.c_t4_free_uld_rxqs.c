
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ desc; } ;
struct sge_ofld_rxq {TYPE_2__ fl; TYPE_1__ rspq; } ;
struct adapter {int dummy; } ;


 int free_rspq_fl (struct adapter*,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void t4_free_uld_rxqs(struct adapter *adap, int n,
        struct sge_ofld_rxq *q)
{
 for ( ; n; n--, q++) {
  if (q->rspq.desc)
   free_rspq_fl(adap, &q->rspq,
         q->fl.size ? &q->fl : ((void*)0));
 }
}
