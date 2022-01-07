
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_peer_pf_enable_hca (struct mlx5_core_dev*) ;

__attribute__((used)) static int mlx5_peer_pf_init(struct mlx5_core_dev *dev)
{
 int err;

 err = mlx5_peer_pf_enable_hca(dev);
 if (err)
  mlx5_core_err(dev, "Failed to enable peer PF HCA err(%d)\n",
         err);

 return err;
}
