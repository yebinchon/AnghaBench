
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec_sa_ctx {struct mlx5_fpga_esp_xfrm* fpga_xfrm; } ;
struct mlx5_fpga_esp_xfrm {int lock; int * sa_ctx; int num_rules; } ;


 int mlx5_fpga_ipsec_release_sa_ctx (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_fpga_ipsec_delete_sa_ctx(void *context)
{
 struct mlx5_fpga_esp_xfrm *fpga_xfrm =
   ((struct mlx5_fpga_ipsec_sa_ctx *)context)->fpga_xfrm;

 mutex_lock(&fpga_xfrm->lock);
 if (!--fpga_xfrm->num_rules) {
  mlx5_fpga_ipsec_release_sa_ctx(fpga_xfrm->sa_ctx);
  fpga_xfrm->sa_ctx = ((void*)0);
 }
 mutex_unlock(&fpga_xfrm->lock);
}
