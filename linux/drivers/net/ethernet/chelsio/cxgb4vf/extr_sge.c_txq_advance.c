
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int in_use; scalar_t__ pidx; scalar_t__ size; } ;



__attribute__((used)) static inline void txq_advance(struct sge_txq *tq, unsigned int n)
{
 tq->in_use += n;
 tq->pidx += n;
 if (tq->pidx >= tq->size)
  tq->pidx -= tq->size;
}
