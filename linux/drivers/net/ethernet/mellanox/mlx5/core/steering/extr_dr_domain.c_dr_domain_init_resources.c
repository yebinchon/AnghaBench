
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int pdn; int mdev; int uar; void* ste_icm_pool; void* action_icm_pool; } ;


 int DR_ICM_TYPE_MODIFY_ACTION ;
 int DR_ICM_TYPE_STE ;
 int ENOMEM ;
 int mlx5_core_alloc_pd (int ,int *) ;
 int mlx5_core_dealloc_pd (int ,int ) ;
 int mlx5_get_uars_page (int ) ;
 int mlx5_put_uars_page (int ,int ) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int mlx5dr_err (struct mlx5dr_domain*,char*) ;
 void* mlx5dr_icm_pool_create (struct mlx5dr_domain*,int ) ;
 int mlx5dr_icm_pool_destroy (void*) ;
 int mlx5dr_send_ring_alloc (struct mlx5dr_domain*) ;

__attribute__((used)) static int dr_domain_init_resources(struct mlx5dr_domain *dmn)
{
 int ret;

 ret = mlx5_core_alloc_pd(dmn->mdev, &dmn->pdn);
 if (ret) {
  mlx5dr_dbg(dmn, "Couldn't allocate PD\n");
  return ret;
 }

 dmn->uar = mlx5_get_uars_page(dmn->mdev);
 if (!dmn->uar) {
  mlx5dr_err(dmn, "Couldn't allocate UAR\n");
  ret = -ENOMEM;
  goto clean_pd;
 }

 dmn->ste_icm_pool = mlx5dr_icm_pool_create(dmn, DR_ICM_TYPE_STE);
 if (!dmn->ste_icm_pool) {
  mlx5dr_err(dmn, "Couldn't get icm memory\n");
  ret = -ENOMEM;
  goto clean_uar;
 }

 dmn->action_icm_pool = mlx5dr_icm_pool_create(dmn, DR_ICM_TYPE_MODIFY_ACTION);
 if (!dmn->action_icm_pool) {
  mlx5dr_err(dmn, "Couldn't get action icm memory\n");
  ret = -ENOMEM;
  goto free_ste_icm_pool;
 }

 ret = mlx5dr_send_ring_alloc(dmn);
 if (ret) {
  mlx5dr_err(dmn, "Couldn't create send-ring\n");
  goto free_action_icm_pool;
 }

 return 0;

free_action_icm_pool:
 mlx5dr_icm_pool_destroy(dmn->action_icm_pool);
free_ste_icm_pool:
 mlx5dr_icm_pool_destroy(dmn->ste_icm_pool);
clean_uar:
 mlx5_put_uars_page(dmn->mdev, dmn->uar);
clean_pd:
 mlx5_core_dealloc_pd(dmn->mdev, dmn->pdn);

 return ret;
}
