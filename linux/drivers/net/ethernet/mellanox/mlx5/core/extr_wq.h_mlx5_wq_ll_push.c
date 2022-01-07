
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_ll {int cur_sz; int wqe_ctr; int head; } ;



__attribute__((used)) static inline void mlx5_wq_ll_push(struct mlx5_wq_ll *wq, u16 head_next)
{
 wq->head = head_next;
 wq->wqe_ctr++;
 wq->cur_sz++;
}
