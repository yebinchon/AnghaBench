
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int in_use; scalar_t__ pidx; scalar_t__ size; } ;



__attribute__((used)) static inline void txq_advance(struct sge_txq *q, unsigned int n)
{
 q->in_use += n;
 q->pidx += n;
 if (q->pidx >= q->size)
  q->pidx -= q->size;
}
