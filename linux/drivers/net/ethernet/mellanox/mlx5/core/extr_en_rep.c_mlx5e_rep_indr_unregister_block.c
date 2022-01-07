
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_rep_priv {int dummy; } ;


 int __flow_indr_block_cb_unregister (struct net_device*,int ,struct mlx5e_rep_priv*) ;
 int mlx5e_rep_indr_setup_tc_cb ;

__attribute__((used)) static void mlx5e_rep_indr_unregister_block(struct mlx5e_rep_priv *rpriv,
         struct net_device *netdev)
{
 __flow_indr_block_cb_unregister(netdev, mlx5e_rep_indr_setup_tc_cb,
     rpriv);
}
