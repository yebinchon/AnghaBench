
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int log_stride; } ;
struct mlx5_cqwq {TYPE_1__ fbc; } ;
struct mlx5_cqe64 {int dummy; } ;


 struct mlx5_cqe64* mlx5_frag_buf_get_wqe (TYPE_1__*,int ) ;

__attribute__((used)) static inline struct mlx5_cqe64 *mlx5_cqwq_get_wqe(struct mlx5_cqwq *wq, u32 ix)
{
 struct mlx5_cqe64 *cqe = mlx5_frag_buf_get_wqe(&wq->fbc, ix);


 cqe += wq->fbc.log_stride == 7;

 return cqe;
}
