
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int active_cvlans; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;


 int MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID ;
 int clear_bit (int ,int ) ;
 int mlx5e_add_vlan_rule (struct mlx5e_priv*,int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int mlx5e_vlan_rx_add_cvid(struct mlx5e_priv *priv, u16 vid)
{
 int err;

 set_bit(vid, priv->fs.vlan.active_cvlans);

 err = mlx5e_add_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID, vid);
 if (err)
  clear_bit(vid, priv->fs.vlan.active_cvlans);

 return err;
}
