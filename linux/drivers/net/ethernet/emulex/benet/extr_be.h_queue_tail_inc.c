
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_queue_info {int len; int tail; } ;


 int index_inc (int *,int ) ;

__attribute__((used)) static inline void queue_tail_inc(struct be_queue_info *q)
{
 index_inc(&q->tail, q->len);
}
