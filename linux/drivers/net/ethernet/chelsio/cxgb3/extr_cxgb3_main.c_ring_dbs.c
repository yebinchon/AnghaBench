
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_qset {TYPE_2__* txq; scalar_t__ adap; } ;
struct TYPE_3__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; } ;
struct TYPE_4__ {int cntxt_id; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 int SGE_QSETS ;
 int SGE_TXQ_PER_SET ;
 int V_EGRCNTX (int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void ring_dbs(struct adapter *adap)
{
 int i, j;

 for (i = 0; i < SGE_QSETS; i++) {
  struct sge_qset *qs = &adap->sge.qs[i];

  if (qs->adap)
   for (j = 0; j < SGE_TXQ_PER_SET; j++)
    t3_write_reg(adap, A_SG_KDOORBELL, F_SELEGRCNTX | V_EGRCNTX(qs->txq[j].cntxt_id));
 }
}
