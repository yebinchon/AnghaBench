
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr_action; } ;
struct mlx5_modify_hdr {TYPE_1__ action; } ;
struct mlx5_flow_root_namespace {int dummy; } ;


 int mlx5dr_action_destroy (int ) ;

__attribute__((used)) static void mlx5_cmd_dr_modify_header_dealloc(struct mlx5_flow_root_namespace *ns,
           struct mlx5_modify_hdr *modify_hdr)
{
 mlx5dr_action_destroy(modify_hdr->action.dr_action);
}
