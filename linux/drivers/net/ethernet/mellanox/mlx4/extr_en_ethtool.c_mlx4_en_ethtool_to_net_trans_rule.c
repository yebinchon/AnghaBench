
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {int ether_type_enable; int ether_type; } ;
struct mlx4_spec_list {TYPE_3__ eth; } ;
struct mlx4_en_priv {int dummy; } ;
struct list_head {int dummy; } ;
struct ethhdr {int h_proto; int * h_dest; } ;
struct TYPE_4__ {struct ethhdr ether_spec; } ;
struct TYPE_5__ {int flow_type; TYPE_1__ h_u; } ;
struct ethtool_rxnfc {TYPE_2__ fs; } ;


 int ENOMEM ;

 int FLOW_EXT ;
 int FLOW_MAC_EXT ;
 int GFP_KERNEL ;



 int add_ip_rule (struct mlx4_en_priv*,struct ethtool_rxnfc*,struct list_head*) ;
 int add_tcp_udp_rule (struct mlx4_en_priv*,struct ethtool_rxnfc*,struct list_head*,int const) ;
 struct mlx4_spec_list* kzalloc (int,int ) ;
 int mlx4_en_ethtool_add_mac_rule (struct ethtool_rxnfc*,struct list_head*,struct mlx4_spec_list*,int *) ;
 int mlx4_en_validate_flow (struct net_device*,struct ethtool_rxnfc*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_ethtool_to_net_trans_rule(struct net_device *dev,
          struct ethtool_rxnfc *cmd,
          struct list_head *rule_list_h)
{
 int err;
 struct ethhdr *eth_spec;
 struct mlx4_spec_list *spec_l2;
 struct mlx4_en_priv *priv = netdev_priv(dev);

 err = mlx4_en_validate_flow(dev, cmd);
 if (err)
  return err;

 switch (cmd->fs.flow_type & ~(FLOW_EXT | FLOW_MAC_EXT)) {
 case 131:
  spec_l2 = kzalloc(sizeof(*spec_l2), GFP_KERNEL);
  if (!spec_l2)
   return -ENOMEM;

  eth_spec = &cmd->fs.h_u.ether_spec;
  mlx4_en_ethtool_add_mac_rule(cmd, rule_list_h, spec_l2,
          &eth_spec->h_dest[0]);
  spec_l2->eth.ether_type = eth_spec->h_proto;
  if (eth_spec->h_proto)
   spec_l2->eth.ether_type_enable = 1;
  break;
 case 130:
  err = add_ip_rule(priv, cmd, rule_list_h);
  break;
 case 129:
  err = add_tcp_udp_rule(priv, cmd, rule_list_h, 129);
  break;
 case 128:
  err = add_tcp_udp_rule(priv, cmd, rule_list_h, 128);
  break;
 }

 return err;
}
