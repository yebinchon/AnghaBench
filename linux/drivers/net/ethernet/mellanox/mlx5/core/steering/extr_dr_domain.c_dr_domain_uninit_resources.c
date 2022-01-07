
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int pdn; int mdev; int uar; int ste_icm_pool; int action_icm_pool; int send_ring; } ;


 int mlx5_core_dealloc_pd (int ,int ) ;
 int mlx5_put_uars_page (int ,int ) ;
 int mlx5dr_icm_pool_destroy (int ) ;
 int mlx5dr_send_ring_free (struct mlx5dr_domain*,int ) ;

__attribute__((used)) static void dr_domain_uninit_resources(struct mlx5dr_domain *dmn)
{
 mlx5dr_send_ring_free(dmn, dmn->send_ring);
 mlx5dr_icm_pool_destroy(dmn->action_icm_pool);
 mlx5dr_icm_pool_destroy(dmn->ste_icm_pool);
 mlx5_put_uars_page(dmn->mdev, dmn->uar);
 mlx5_core_dealloc_pd(dmn->mdev, dmn->pdn);
}
