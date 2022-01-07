
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int netdev; int mdev; } ;
struct TYPE_3__ {int addr; } ;
struct mlx5e_l2_hash_node {int action; int mpfs; TYPE_1__ ai; } ;


 int ETH_ALEN ;


 int MLX5E_ACTION_NONE ;
 int MLX5E_FULLMATCH ;
 int ether_addr_copy (int*,int ) ;
 int is_multicast_ether_addr (int*) ;
 int mlx5_mpfs_add_mac (int ,int*) ;
 int mlx5_mpfs_del_mac (int ,int*) ;
 int mlx5e_add_l2_flow_rule (struct mlx5e_priv*,TYPE_1__*,int ) ;
 int mlx5e_del_l2_flow_rule (struct mlx5e_priv*,TYPE_1__*) ;
 int mlx5e_del_l2_from_hash (struct mlx5e_l2_hash_node*) ;
 int netdev_warn (int ,char*,char*,int*,int) ;

__attribute__((used)) static void mlx5e_execute_l2_action(struct mlx5e_priv *priv,
        struct mlx5e_l2_hash_node *hn)
{
 u8 action = hn->action;
 u8 mac_addr[ETH_ALEN];
 int l2_err = 0;

 ether_addr_copy(mac_addr, hn->ai.addr);

 switch (action) {
 case 129:
  mlx5e_add_l2_flow_rule(priv, &hn->ai, MLX5E_FULLMATCH);
  if (!is_multicast_ether_addr(mac_addr)) {
   l2_err = mlx5_mpfs_add_mac(priv->mdev, mac_addr);
   hn->mpfs = !l2_err;
  }
  hn->action = MLX5E_ACTION_NONE;
  break;

 case 128:
  if (!is_multicast_ether_addr(mac_addr) && hn->mpfs)
   l2_err = mlx5_mpfs_del_mac(priv->mdev, mac_addr);
  mlx5e_del_l2_flow_rule(priv, &hn->ai);
  mlx5e_del_l2_from_hash(hn);
  break;
 }

 if (l2_err)
  netdev_warn(priv->netdev, "MPFS, failed to %s mac %pM, err(%d)\n",
       action == 129 ? "add" : "del", mac_addr, l2_err);
}
