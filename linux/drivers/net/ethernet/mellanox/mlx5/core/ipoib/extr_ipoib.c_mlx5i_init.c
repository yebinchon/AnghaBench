
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * ethtool_ops; int * netdev_ops; int hw_features; int mtu; int max_mtu; } ;
struct mlx5e_profile {int dummy; } ;
struct TYPE_2__ {int params; } ;
struct mlx5e_priv {TYPE_1__ channels; int max_nch; int rss_params; } ;
struct mlx5_core_dev {int dummy; } ;


 int NETIF_F_GRO ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int mlx5e_build_nic_params (struct mlx5_core_dev*,int *,int *,int *,int ,int ) ;
 int mlx5e_netdev_init (struct net_device*,struct mlx5e_priv*,struct mlx5_core_dev*,struct mlx5e_profile const*,void*) ;
 int mlx5e_set_netdev_mtu_boundaries (struct mlx5e_priv*) ;
 int mlx5e_timestamp_init (struct mlx5e_priv*) ;
 int mlx5i_build_nic_params (struct mlx5_core_dev*,int *) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_ethtool_ops ;
 int mlx5i_netdev_ops ;

int mlx5i_init(struct mlx5_core_dev *mdev,
        struct net_device *netdev,
        const struct mlx5e_profile *profile,
        void *ppriv)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);
 int err;

 err = mlx5e_netdev_init(netdev, priv, mdev, profile, ppriv);
 if (err)
  return err;

 mlx5e_set_netdev_mtu_boundaries(priv);
 netdev->mtu = netdev->max_mtu;

 mlx5e_build_nic_params(mdev, ((void*)0), &priv->rss_params, &priv->channels.params,
          priv->max_nch, netdev->mtu);
 mlx5i_build_nic_params(mdev, &priv->channels.params);

 mlx5e_timestamp_init(priv);


 netdev->hw_features |= NETIF_F_SG;
 netdev->hw_features |= NETIF_F_IP_CSUM;
 netdev->hw_features |= NETIF_F_IPV6_CSUM;
 netdev->hw_features |= NETIF_F_GRO;
 netdev->hw_features |= NETIF_F_TSO;
 netdev->hw_features |= NETIF_F_TSO6;
 netdev->hw_features |= NETIF_F_RXCSUM;
 netdev->hw_features |= NETIF_F_RXHASH;

 netdev->netdev_ops = &mlx5i_netdev_ops;
 netdev->ethtool_ops = &mlx5i_ethtool_ops;

 return 0;
}
