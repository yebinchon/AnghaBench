
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ft; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;


 int mlx5e_del_vlan_rules (struct mlx5e_priv*) ;
 int mlx5e_destroy_flow_table (int *) ;

__attribute__((used)) static void mlx5e_destroy_vlan_table(struct mlx5e_priv *priv)
{
 mlx5e_del_vlan_rules(priv);
 mlx5e_destroy_flow_table(&priv->fs.vlan.ft);
}
