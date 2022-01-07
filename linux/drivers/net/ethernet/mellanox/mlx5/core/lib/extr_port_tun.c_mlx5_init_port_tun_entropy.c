
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tun_entropy {int enabled; scalar_t__ num_disabling_entries; scalar_t__ num_enabling_entries; int lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_port_tun_entropy_flags {int calc_enabled; scalar_t__ calc_supported; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_query_port_tun_entropy (struct mlx5_core_dev*,struct mlx5_port_tun_entropy_flags*) ;
 int mutex_init (int *) ;

void mlx5_init_port_tun_entropy(struct mlx5_tun_entropy *tun_entropy,
    struct mlx5_core_dev *mdev)
{
 struct mlx5_port_tun_entropy_flags entropy_flags;

 tun_entropy->mdev = mdev;
 mutex_init(&tun_entropy->lock);
 mlx5_query_port_tun_entropy(mdev, &entropy_flags);
 tun_entropy->num_enabling_entries = 0;
 tun_entropy->num_disabling_entries = 0;
 tun_entropy->enabled = entropy_flags.calc_supported ?
          entropy_flags.calc_enabled : 1;
}
