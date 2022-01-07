
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * qs; } ;
struct adapter {TYPE_1__ sge; } ;


 int SGE_QSETS ;
 int t3_free_qset (struct adapter*,int *) ;

void t3_free_sge_resources(struct adapter *adap)
{
 int i;

 for (i = 0; i < SGE_QSETS; ++i)
  t3_free_qset(adap, &adap->sge.qs[i]);
}
