
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_ll {int cur_sz; int * tail_next; } ;
typedef int __be16 ;



__attribute__((used)) static inline void mlx5_wq_ll_pop(struct mlx5_wq_ll *wq, __be16 ix,
      __be16 *next_tail_next)
{
 *wq->tail_next = ix;
 wq->tail_next = next_tail_next;
 wq->cur_sz--;
}
