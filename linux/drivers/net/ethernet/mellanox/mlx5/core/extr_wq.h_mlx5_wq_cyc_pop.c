
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_cyc {int cur_sz; } ;



__attribute__((used)) static inline void mlx5_wq_cyc_pop(struct mlx5_wq_cyc *wq)
{
 wq->cur_sz--;
}
