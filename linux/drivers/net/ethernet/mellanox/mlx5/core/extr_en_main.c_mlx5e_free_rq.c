
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int head; int tail; struct mlx5e_dma_info* page_cache; } ;
struct TYPE_5__ {int frags; } ;
struct TYPE_4__ {int info; } ;
struct mlx5e_rq {int wq_type; int wq_ctrl; int page_pool; int xdp_rxq; TYPE_3__ page_cache; TYPE_2__ wqe; int umr_mkey; int mdev; TYPE_1__ mpwqe; scalar_t__ xdp_prog; } ;
struct mlx5e_dma_info {int dummy; } ;


 int MLX5E_CACHE_SIZE ;

 int bpf_prog_put (scalar_t__) ;
 int kvfree (int ) ;
 int mlx5_core_destroy_mkey (int ,int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5e_free_di_list (struct mlx5e_rq*) ;
 int mlx5e_page_release_dynamic (struct mlx5e_rq*,struct mlx5e_dma_info*,int) ;
 int page_pool_destroy (int ) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void mlx5e_free_rq(struct mlx5e_rq *rq)
{
 int i;

 if (rq->xdp_prog)
  bpf_prog_put(rq->xdp_prog);

 switch (rq->wq_type) {
 case 128:
  kvfree(rq->mpwqe.info);
  mlx5_core_destroy_mkey(rq->mdev, &rq->umr_mkey);
  break;
 default:
  kvfree(rq->wqe.frags);
  mlx5e_free_di_list(rq);
 }

 for (i = rq->page_cache.head; i != rq->page_cache.tail;
      i = (i + 1) & (MLX5E_CACHE_SIZE - 1)) {
  struct mlx5e_dma_info *dma_info = &rq->page_cache.page_cache[i];





  mlx5e_page_release_dynamic(rq, dma_info, 0);
 }

 xdp_rxq_info_unreg(&rq->xdp_rxq);
 page_pool_destroy(rq->page_pool);
 mlx5_wq_destroy(&rq->wq_ctrl);
}
