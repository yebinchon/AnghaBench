
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;


 int MAX_ADDR_LEN ;
 int memset (int *,int,int ) ;
 int mlx5_query_mac_address (int ,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_dcbnl_getpermhwaddr(struct net_device *netdev,
          u8 *perm_addr)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 if (!perm_addr)
  return;

 memset(perm_addr, 0xff, MAX_ADDR_LEN);

 mlx5_query_mac_address(priv->mdev, perm_addr);
}
