
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {size_t uld; int lro_mgr; struct adapter* adap; } ;
struct adapter {TYPE_1__* uld; } ;
struct TYPE_2__ {int (* lro_flush ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static void uldrx_flush_handler(struct sge_rspq *q)
{
 struct adapter *adap = q->adap;

 if (adap->uld[q->uld].lro_flush)
  adap->uld[q->uld].lro_flush(&q->lro_mgr);
}
