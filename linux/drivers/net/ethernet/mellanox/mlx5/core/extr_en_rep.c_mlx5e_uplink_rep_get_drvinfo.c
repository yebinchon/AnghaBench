
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct ethtool_drvinfo {int bus_info; } ;
struct TYPE_2__ {int pdev; } ;


 int mlx5e_rep_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void mlx5e_uplink_rep_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *drvinfo)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 mlx5e_rep_get_drvinfo(dev, drvinfo);
 strlcpy(drvinfo->bus_info, pci_name(priv->mdev->pdev),
  sizeof(drvinfo->bus_info));
}
