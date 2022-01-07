
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
struct TYPE_2__ {int flags; int vhca_id; int num; } ;
struct mlx5_flow_destination {TYPE_1__ vport; } ;
struct mlx5_flow_rule {struct mlx5_flow_destination dest_attr; } ;


 int MLX5_FLOW_DEST_VPORT_VHCA_ID ;
 struct mlx5dr_action* mlx5dr_action_create_dest_vport (struct mlx5dr_domain*,int ,int,int ) ;

__attribute__((used)) static struct mlx5dr_action *create_vport_action(struct mlx5dr_domain *domain,
       struct mlx5_flow_rule *dst)
{
 struct mlx5_flow_destination *dest_attr = &dst->dest_attr;

 return mlx5dr_action_create_dest_vport(domain, dest_attr->vport.num,
            dest_attr->vport.flags &
            MLX5_FLOW_DEST_VPORT_VHCA_ID,
            dest_attr->vport.vhca_id);
}
