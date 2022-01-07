
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int iqe_len; scalar_t__ cidx; scalar_t__ size; int gen; void* desc; void* cur_desc; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void rspq_next(struct sge_rspq *q)
{
 q->cur_desc = (void *)q->cur_desc + q->iqe_len;
 if (unlikely(++q->cidx == q->size)) {
  q->cidx = 0;
  q->gen ^= 1;
  q->cur_desc = q->desc;
 }
}
