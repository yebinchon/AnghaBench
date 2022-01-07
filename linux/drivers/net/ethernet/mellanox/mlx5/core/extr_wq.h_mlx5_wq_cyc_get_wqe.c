
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_cyc {int fbc; } ;


 void* mlx5_frag_buf_get_wqe (int *,int ) ;

__attribute__((used)) static inline void *mlx5_wq_cyc_get_wqe(struct mlx5_wq_cyc *wq, u16 ix)
{
 return mlx5_frag_buf_get_wqe(&wq->fbc, ix);
}
