
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {int intr_params; } ;
struct TYPE_2__ {unsigned int* timer_val; } ;
struct adapter {TYPE_1__ sge; } ;


 unsigned int SGE_NTIMERS ;

__attribute__((used)) static inline unsigned int qtimer_val(const struct adapter *adap,
          const struct sge_rspq *q)
{
 unsigned int idx = q->intr_params >> 1;

 return idx < SGE_NTIMERS ? adap->sge.timer_val[idx] : 0;
}
