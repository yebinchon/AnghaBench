
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct mlx5e_wqe_frag_info {int dummy; } ;
struct TYPE_3__ {size_t log_num_frags; } ;
struct TYPE_4__ {TYPE_1__ info; struct mlx5e_wqe_frag_info* frags; } ;
struct mlx5e_rq {TYPE_2__ wqe; } ;



__attribute__((used)) static inline struct mlx5e_wqe_frag_info *get_frag(struct mlx5e_rq *rq, u16 ix)
{
 return &rq->wqe.frags[ix << rq->wqe.info.log_num_frags];
}
