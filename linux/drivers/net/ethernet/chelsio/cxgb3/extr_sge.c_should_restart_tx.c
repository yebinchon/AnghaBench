
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int processed; unsigned int cleaned; unsigned int in_use; int size; } ;



__attribute__((used)) static inline int should_restart_tx(const struct sge_txq *q)
{
 unsigned int r = q->processed - q->cleaned;

 return q->in_use - r < (q->size >> 1);
}
