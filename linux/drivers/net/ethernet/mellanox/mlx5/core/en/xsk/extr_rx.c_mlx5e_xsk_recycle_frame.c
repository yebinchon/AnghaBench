
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_rq {TYPE_1__* umem; } ;
struct TYPE_2__ {int chunk_mask; } ;


 int xsk_umem_fq_reuse (TYPE_1__*,int) ;

__attribute__((used)) static inline void mlx5e_xsk_recycle_frame(struct mlx5e_rq *rq, u64 handle)
{
 xsk_umem_fq_reuse(rq->umem, handle & rq->umem->chunk_mask);
}
