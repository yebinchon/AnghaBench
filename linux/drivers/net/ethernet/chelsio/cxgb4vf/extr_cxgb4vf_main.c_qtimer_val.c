
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {int intr_params; } ;
struct TYPE_2__ {unsigned int* timer_val; } ;
struct adapter {TYPE_1__ sge; } ;


 unsigned int QINTR_TIMER_IDX_G (int ) ;
 unsigned int SGE_NTIMERS ;

__attribute__((used)) static unsigned int qtimer_val(const struct adapter *adapter,
          const struct sge_rspq *rspq)
{
 unsigned int timer_idx = QINTR_TIMER_IDX_G(rspq->intr_params);

 return timer_idx < SGE_NTIMERS
  ? adapter->sge.timer_val[timer_idx]
  : 0;
}
