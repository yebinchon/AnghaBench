
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_wqe_frag_info {scalar_t__ offset; int last_in_page; int * di; } ;
struct mlx5e_rq_frag_info {scalar_t__ frag_stride; } ;
struct TYPE_3__ {int log_num_frags; int num_frags; struct mlx5e_rq_frag_info* arr; } ;
struct TYPE_4__ {TYPE_1__ info; struct mlx5e_wqe_frag_info* frags; int wq; int * di; } ;
struct mlx5e_rq {TYPE_2__ wqe; } ;


 scalar_t__ PAGE_SIZE ;
 int mlx5_wq_cyc_get_size (int *) ;

__attribute__((used)) static void mlx5e_init_frags_partition(struct mlx5e_rq *rq)
{
 struct mlx5e_wqe_frag_info next_frag = {};
 struct mlx5e_wqe_frag_info *prev = ((void*)0);
 int i;

 next_frag.di = &rq->wqe.di[0];

 for (i = 0; i < mlx5_wq_cyc_get_size(&rq->wqe.wq); i++) {
  struct mlx5e_rq_frag_info *frag_info = &rq->wqe.info.arr[0];
  struct mlx5e_wqe_frag_info *frag =
   &rq->wqe.frags[i << rq->wqe.info.log_num_frags];
  int f;

  for (f = 0; f < rq->wqe.info.num_frags; f++, frag++) {
   if (next_frag.offset + frag_info[f].frag_stride > PAGE_SIZE) {
    next_frag.di++;
    next_frag.offset = 0;
    if (prev)
     prev->last_in_page = 1;
   }
   *frag = next_frag;


   next_frag.offset += frag_info[f].frag_stride;
   prev = frag;
  }
 }

 if (prev)
  prev->last_in_page = 1;
}
