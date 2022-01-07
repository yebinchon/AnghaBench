
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int active_svlans; int active_cvlans; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
typedef int __be16 ;


 scalar_t__ ETH_P_8021AD ;
 scalar_t__ ETH_P_8021Q ;
 int MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID ;
 int MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID ;
 scalar_t__ be16_to_cpu (int ) ;
 int clear_bit (int ,int ) ;
 int mlx5e_del_vlan_rule (struct mlx5e_priv*,int ,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;

int mlx5e_vlan_rx_kill_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 if (be16_to_cpu(proto) == ETH_P_8021Q) {
  clear_bit(vid, priv->fs.vlan.active_cvlans);
  mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID, vid);
 } else if (be16_to_cpu(proto) == ETH_P_8021AD) {
  clear_bit(vid, priv->fs.vlan.active_svlans);
  mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID, vid);
  netdev_update_features(dev);
 }

 return 0;
}
