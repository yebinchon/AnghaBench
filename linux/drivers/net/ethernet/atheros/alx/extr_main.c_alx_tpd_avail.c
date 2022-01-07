
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_tx_queue {scalar_t__ write_idx; scalar_t__ read_idx; int count; } ;



__attribute__((used)) static inline int alx_tpd_avail(struct alx_tx_queue *txq)
{
 if (txq->write_idx >= txq->read_idx)
  return txq->count + txq->read_idx - txq->write_idx - 1;
 return txq->read_idx - txq->write_idx - 1;
}
