
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_roce {int ft; int fg; int allow_rule; } ;
struct TYPE_2__ {struct mlx5_core_roce roce; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_del_flow_rules (int ) ;
 int mlx5_destroy_flow_group (int ) ;
 int mlx5_destroy_flow_table (int ) ;

__attribute__((used)) static void mlx5_rdma_disable_roce_steering(struct mlx5_core_dev *dev)
{
 struct mlx5_core_roce *roce = &dev->priv.roce;

 mlx5_del_flow_rules(roce->allow_rule);
 mlx5_destroy_flow_group(roce->fg);
 mlx5_destroy_flow_table(roce->ft);
}
