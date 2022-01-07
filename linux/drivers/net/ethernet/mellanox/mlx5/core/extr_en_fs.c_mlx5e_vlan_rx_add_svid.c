
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int active_svlans; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; struct net_device* netdev; } ;


 int MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID ;
 int clear_bit (int ,int ) ;
 int mlx5e_add_vlan_rule (struct mlx5e_priv*,int ,int ) ;
 int netdev_update_features (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int mlx5e_vlan_rx_add_svid(struct mlx5e_priv *priv, u16 vid)
{
 struct net_device *netdev = priv->netdev;
 int err;

 set_bit(vid, priv->fs.vlan.active_svlans);

 err = mlx5e_add_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID, vid);
 if (err) {
  clear_bit(vid, priv->fs.vlan.active_svlans);
  return err;
 }


 netdev_update_features(netdev);
 return err;
}
