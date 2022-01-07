
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_cyc {int cur_sz; int wqe_ctr; } ;



__attribute__((used)) static inline void mlx5_wq_cyc_push(struct mlx5_wq_cyc *wq)
{
 wq->wqe_ctr++;
 wq->cur_sz++;
}
