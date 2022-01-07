
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {int cidx; scalar_t__ size; TYPE_1__* stat; } ;
struct TYPE_2__ {int cidx; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline int reclaimable(const struct sge_txq *tq)
{
 int hw_cidx = be16_to_cpu(tq->stat->cidx);
 int reclaimable = hw_cidx - tq->cidx;
 if (reclaimable < 0)
  reclaimable += tq->size;
 return reclaimable;
}
