
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {int size; scalar_t__ cidx; TYPE_1__* stat; } ;
struct TYPE_2__ {int cidx; } ;


 int READ_ONCE (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static inline int reclaimable(const struct sge_txq *q)
{
 int hw_cidx = ntohs(READ_ONCE(q->stat->cidx));
 hw_cidx -= q->cidx;
 return hw_cidx < 0 ? hw_cidx + q->size : hw_cidx;
}
