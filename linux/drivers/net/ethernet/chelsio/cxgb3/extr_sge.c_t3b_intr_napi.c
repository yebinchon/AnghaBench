
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sge_rspq {int lock; } ;
struct sge_qset {int napi; struct sge_rspq rspq; } ;
struct TYPE_2__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; } ;
typedef int irqreturn_t ;


 int A_PL_CLI ;
 int A_SG_DATA_INTR ;
 int F_ERRINTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_slow_intr_handler (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t t3b_intr_napi(int irq, void *cookie)
{
 u32 map;
 struct adapter *adap = cookie;
 struct sge_qset *qs0 = &adap->sge.qs[0];
 struct sge_rspq *q0 = &qs0->rspq;

 t3_write_reg(adap, A_PL_CLI, 0);
 map = t3_read_reg(adap, A_SG_DATA_INTR);

 if (unlikely(!map))
  return IRQ_NONE;

 spin_lock(&q0->lock);

 if (unlikely(map & F_ERRINTR))
  t3_slow_intr_handler(adap);

 if (likely(map & 1))
  napi_schedule(&qs0->napi);

 if (map & 2)
  napi_schedule(&adap->sge.qs[1].napi);

 spin_unlock(&q0->lock);
 return IRQ_HANDLED;
}
