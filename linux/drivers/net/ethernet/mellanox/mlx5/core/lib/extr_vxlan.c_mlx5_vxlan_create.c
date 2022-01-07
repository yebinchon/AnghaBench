
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_vxlan {int htable; int lock; int sync_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 struct mlx5_vxlan* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IANA_VXLAN_UDP_PORT ;
 int MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int hash_init (int ) ;
 struct mlx5_vxlan* kzalloc (int,int ) ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_vxlan_add_port (struct mlx5_vxlan*,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tunnel_stateless_vxlan ;

struct mlx5_vxlan *mlx5_vxlan_create(struct mlx5_core_dev *mdev)
{
 struct mlx5_vxlan *vxlan;

 if (!MLX5_CAP_ETH(mdev, tunnel_stateless_vxlan) || !mlx5_core_is_pf(mdev))
  return ERR_PTR(-ENOTSUPP);

 vxlan = kzalloc(sizeof(*vxlan), GFP_KERNEL);
 if (!vxlan)
  return ERR_PTR(-ENOMEM);

 vxlan->mdev = mdev;
 mutex_init(&vxlan->sync_lock);
 spin_lock_init(&vxlan->lock);
 hash_init(vxlan->htable);


 mlx5_vxlan_add_port(vxlan, IANA_VXLAN_UDP_PORT);

 return vxlan;
}
