
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int max_send_wr; int max_inline_size; } ;
struct mlx5dr_domain {TYPE_3__* send_ring; int mdev; int pdn; TYPE_2__ info; int uar; } ;
struct dr_qp_init_attr {int max_send_wr; int uar; int pdn; int cqn; } ;
struct TYPE_9__ {int cqn; } ;
struct TYPE_13__ {TYPE_5__* qp; TYPE_1__ mcq; } ;
struct TYPE_12__ {int max_inline_data; } ;
struct TYPE_11__ {int signal_th; int max_post_send_size; int buf_size; TYPE_6__* cq; TYPE_5__* qp; struct TYPE_11__* buf; void* mr; void* sync_mr; struct TYPE_11__* sync_buff; } ;


 int DR_CHUNK_SIZE_1K ;
 int DR_ICM_TYPE_STE ;
 int DR_STE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MIN_READ_SYNC ;
 int QUEUE_SIZE ;
 int SIGNAL_PER_DIV_QUEUE ;
 TYPE_6__* dr_create_cq (int ,int ,int) ;
 TYPE_5__* dr_create_rc_qp (int ,struct dr_qp_init_attr*) ;
 int dr_dereg_mr (int ,void*) ;
 int dr_destroy_cq (int ,TYPE_6__*) ;
 int dr_destroy_qp (int ,TYPE_5__*) ;
 int dr_prepare_qp_to_rts (struct mlx5dr_domain*) ;
 void* dr_reg_mr (int ,int ,TYPE_3__*,int) ;
 int kfree (TYPE_3__*) ;
 void* kzalloc (int,int ) ;
 int min (int ,int ) ;
 int mlx5dr_icm_pool_chunk_size_to_byte (int ,int ) ;

int mlx5dr_send_ring_alloc(struct mlx5dr_domain *dmn)
{
 struct dr_qp_init_attr init_attr = {};
 int cq_size;
 int size;
 int ret;

 dmn->send_ring = kzalloc(sizeof(*dmn->send_ring), GFP_KERNEL);
 if (!dmn->send_ring)
  return -ENOMEM;

 cq_size = QUEUE_SIZE + 1;
 dmn->send_ring->cq = dr_create_cq(dmn->mdev, dmn->uar, cq_size);
 if (!dmn->send_ring->cq) {
  ret = -ENOMEM;
  goto free_send_ring;
 }

 init_attr.cqn = dmn->send_ring->cq->mcq.cqn;
 init_attr.pdn = dmn->pdn;
 init_attr.uar = dmn->uar;
 init_attr.max_send_wr = QUEUE_SIZE;

 dmn->send_ring->qp = dr_create_rc_qp(dmn->mdev, &init_attr);
 if (!dmn->send_ring->qp) {
  ret = -ENOMEM;
  goto clean_cq;
 }

 dmn->send_ring->cq->qp = dmn->send_ring->qp;

 dmn->info.max_send_wr = QUEUE_SIZE;
 dmn->info.max_inline_size = min(dmn->send_ring->qp->max_inline_data,
     DR_STE_SIZE);

 dmn->send_ring->signal_th = dmn->info.max_send_wr /
  SIGNAL_PER_DIV_QUEUE;


 ret = dr_prepare_qp_to_rts(dmn);
 if (ret)
  goto clean_qp;

 dmn->send_ring->max_post_send_size =
  mlx5dr_icm_pool_chunk_size_to_byte(DR_CHUNK_SIZE_1K,
         DR_ICM_TYPE_STE);


 size = dmn->send_ring->signal_th * dmn->send_ring->max_post_send_size;
 dmn->send_ring->buf = kzalloc(size, GFP_KERNEL);
 if (!dmn->send_ring->buf) {
  ret = -ENOMEM;
  goto clean_qp;
 }

 dmn->send_ring->buf_size = size;

 dmn->send_ring->mr = dr_reg_mr(dmn->mdev,
           dmn->pdn, dmn->send_ring->buf, size);
 if (!dmn->send_ring->mr) {
  ret = -ENOMEM;
  goto free_mem;
 }

 dmn->send_ring->sync_mr = dr_reg_mr(dmn->mdev,
         dmn->pdn, dmn->send_ring->sync_buff,
         MIN_READ_SYNC);
 if (!dmn->send_ring->sync_mr) {
  ret = -ENOMEM;
  goto clean_mr;
 }

 return 0;

clean_mr:
 dr_dereg_mr(dmn->mdev, dmn->send_ring->mr);
free_mem:
 kfree(dmn->send_ring->buf);
clean_qp:
 dr_destroy_qp(dmn->mdev, dmn->send_ring->qp);
clean_cq:
 dr_destroy_cq(dmn->mdev, dmn->send_ring->cq);
free_send_ring:
 kfree(dmn->send_ring);

 return ret;
}
