
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5_wq_cyc {int cur_sz; int wqe_ctr; } ;



__attribute__((used)) static inline void mlx5_wq_cyc_push_n(struct mlx5_wq_cyc *wq, u8 n)
{
 wq->wqe_ctr += n;
 wq->cur_sz += n;
}
