
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_encap_entry {int reformat_type; int * tunnel; } ;


 int MLX5_REFORMAT_TYPE_L2_TO_VXLAN ;
 int geneve_tunnel ;

__attribute__((used)) static int mlx5e_tc_tun_init_encap_attr_geneve(struct net_device *tunnel_dev,
            struct mlx5e_priv *priv,
            struct mlx5e_encap_entry *e,
            struct netlink_ext_ack *extack)
{
 e->tunnel = &geneve_tunnel;





 e->reformat_type = MLX5_REFORMAT_TYPE_L2_TO_VXLAN;
 return 0;
}
