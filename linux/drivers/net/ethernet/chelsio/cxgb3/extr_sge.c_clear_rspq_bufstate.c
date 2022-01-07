
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {scalar_t__ rx_recycle_buf; int * pg_skb; } ;



__attribute__((used)) static inline void clear_rspq_bufstate(struct sge_rspq * const q)
{
 q->pg_skb = ((void*)0);
 q->rx_recycle_buf = 0;
}
