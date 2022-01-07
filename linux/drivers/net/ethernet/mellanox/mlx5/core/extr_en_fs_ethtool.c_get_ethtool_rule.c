
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_ethtool_rule {int dummy; } ;


 int ENOMEM ;
 struct mlx5e_ethtool_rule* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int add_rule_to_list (struct mlx5e_priv*,struct mlx5e_ethtool_rule*) ;
 int del_ethtool_rule (struct mlx5e_priv*,struct mlx5e_ethtool_rule*) ;
 struct mlx5e_ethtool_rule* find_ethtool_rule (struct mlx5e_priv*,int) ;
 struct mlx5e_ethtool_rule* kzalloc (int,int ) ;

__attribute__((used)) static struct mlx5e_ethtool_rule *get_ethtool_rule(struct mlx5e_priv *priv,
         int location)
{
 struct mlx5e_ethtool_rule *eth_rule;

 eth_rule = find_ethtool_rule(priv, location);
 if (eth_rule)
  del_ethtool_rule(priv, eth_rule);

 eth_rule = kzalloc(sizeof(*eth_rule), GFP_KERNEL);
 if (!eth_rule)
  return ERR_PTR(-ENOMEM);

 add_rule_to_list(priv, eth_rule);
 return eth_rule;
}
