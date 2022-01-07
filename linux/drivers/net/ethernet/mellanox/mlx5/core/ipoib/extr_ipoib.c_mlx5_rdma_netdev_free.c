
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5i_priv {int sub_interface; } ;
struct mlx5e_profile {int (* cleanup ) (struct mlx5e_priv*) ;} ;
struct mlx5e_priv {int mdev; struct mlx5e_profile* profile; struct mlx5i_priv* ppriv; } ;


 int mlx5e_destroy_mdev_resources (int ) ;
 int mlx5e_detach_netdev (struct mlx5e_priv*) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_pkey_qpn_ht_cleanup (struct net_device*) ;
 int stub1 (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5_rdma_netdev_free(struct net_device *netdev)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);
 struct mlx5i_priv *ipriv = priv->ppriv;
 const struct mlx5e_profile *profile = priv->profile;

 mlx5e_detach_netdev(priv);
 profile->cleanup(priv);

 if (!ipriv->sub_interface) {
  mlx5i_pkey_qpn_ht_cleanup(netdev);
  mlx5e_destroy_mdev_resources(priv->mdev);
 }
}
