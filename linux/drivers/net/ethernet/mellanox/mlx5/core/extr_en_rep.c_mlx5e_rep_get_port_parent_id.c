
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
typedef int parent_id ;


 int memcpy (int ,int *,int) ;
 int mlx5_query_nic_system_image_guid (int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_rep_get_port_parent_id(struct net_device *dev,
      struct netdev_phys_item_id *ppid)
{
 struct mlx5e_priv *priv;
 u64 parent_id;

 priv = netdev_priv(dev);

 parent_id = mlx5_query_nic_system_image_guid(priv->mdev);
 ppid->id_len = sizeof(parent_id);
 memcpy(ppid->id, &parent_id, sizeof(parent_id));
}
