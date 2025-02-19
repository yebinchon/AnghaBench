
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_rxnfc {int rule_cnt; int data; } ;


 int ENOENT ;
 int MAX_NUM_OF_ETHTOOL_RULES ;
 int mlx5e_ethtool_get_flow (struct mlx5e_priv*,struct ethtool_rxnfc*,int) ;

__attribute__((used)) static int
mlx5e_ethtool_get_all_flows(struct mlx5e_priv *priv,
       struct ethtool_rxnfc *info, u32 *rule_locs)
{
 int location = 0;
 int idx = 0;
 int err = 0;

 info->data = MAX_NUM_OF_ETHTOOL_RULES;
 while ((!err || err == -ENOENT) && idx < info->rule_cnt) {
  err = mlx5e_ethtool_get_flow(priv, info, location);
  if (!err)
   rule_locs[idx++] = location;
  location++;
 }
 return err;
}
