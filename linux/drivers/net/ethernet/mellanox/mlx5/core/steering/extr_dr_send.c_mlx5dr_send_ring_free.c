
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_send_ring {struct mlx5dr_send_ring* buf; int mr; int sync_mr; int cq; int qp; } ;
struct mlx5dr_domain {int mdev; } ;


 int dr_dereg_mr (int ,int ) ;
 int dr_destroy_cq (int ,int ) ;
 int dr_destroy_qp (int ,int ) ;
 int kfree (struct mlx5dr_send_ring*) ;

void mlx5dr_send_ring_free(struct mlx5dr_domain *dmn,
      struct mlx5dr_send_ring *send_ring)
{
 dr_destroy_qp(dmn->mdev, send_ring->qp);
 dr_destroy_cq(dmn->mdev, send_ring->cq);
 dr_dereg_mr(dmn->mdev, send_ring->sync_mr);
 dr_dereg_mr(dmn->mdev, send_ring->mr);
 kfree(send_ring->buf);
 kfree(send_ring);
}
