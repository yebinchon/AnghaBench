
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_is_ecpf (struct mlx5_core_dev*) ;
 int mlx5_peer_pf_cleanup (struct mlx5_core_dev*) ;

void mlx5_ec_cleanup(struct mlx5_core_dev *dev)
{
 if (!mlx5_core_is_ecpf(dev))
  return;

 mlx5_peer_pf_cleanup(dev);
}
