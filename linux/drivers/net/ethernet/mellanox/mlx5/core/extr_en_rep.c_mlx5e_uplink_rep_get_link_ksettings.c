
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mlx5e_ethtool_get_link_ksettings (struct mlx5e_priv*,struct ethtool_link_ksettings*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_uplink_rep_get_link_ksettings(struct net_device *netdev,
            struct ethtool_link_ksettings *link_ksettings)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 return mlx5e_ethtool_get_link_ksettings(priv, link_ksettings);
}
