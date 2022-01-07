
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peer_pf_pages; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_peer_pf_disable_hca (struct mlx5_core_dev*) ;
 int mlx5_wait_for_pages (struct mlx5_core_dev*,int *) ;

__attribute__((used)) static void mlx5_peer_pf_cleanup(struct mlx5_core_dev *dev)
{
 int err;

 err = mlx5_peer_pf_disable_hca(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to disable peer PF HCA err(%d)\n",
         err);
  return;
 }

 err = mlx5_wait_for_pages(dev, &dev->priv.peer_pf_pages);
 if (err)
  mlx5_core_warn(dev, "Timeout reclaiming peer PF pages err(%d)\n",
          err);
}
