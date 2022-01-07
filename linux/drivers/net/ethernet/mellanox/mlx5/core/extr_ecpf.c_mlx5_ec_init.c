
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_is_ecpf (struct mlx5_core_dev*) ;
 int mlx5_peer_pf_init (struct mlx5_core_dev*) ;

int mlx5_ec_init(struct mlx5_core_dev *dev)
{
 int err = 0;

 if (!mlx5_core_is_ecpf(dev))
  return 0;




 err = mlx5_peer_pf_init(dev);
 if (err)
  return err;

 return 0;
}
