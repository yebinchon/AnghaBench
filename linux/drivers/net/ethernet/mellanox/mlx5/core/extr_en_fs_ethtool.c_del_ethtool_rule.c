
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tot_num_rules; } ;
struct TYPE_4__ {TYPE_1__ ethtool; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
struct mlx5e_ethtool_rule {int eth_ft; int list; scalar_t__ rule; } ;


 int kfree (struct mlx5e_ethtool_rule*) ;
 int list_del (int *) ;
 int mlx5_del_flow_rules (scalar_t__) ;
 int put_flow_table (int ) ;

__attribute__((used)) static void del_ethtool_rule(struct mlx5e_priv *priv,
        struct mlx5e_ethtool_rule *eth_rule)
{
 if (eth_rule->rule)
  mlx5_del_flow_rules(eth_rule->rule);
 list_del(&eth_rule->list);
 priv->fs.ethtool.tot_num_rules--;
 put_flow_table(eth_rule->eth_ft);
 kfree(eth_rule);
}
