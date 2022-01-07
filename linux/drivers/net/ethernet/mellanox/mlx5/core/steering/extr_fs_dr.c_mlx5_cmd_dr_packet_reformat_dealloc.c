
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr_action; } ;
struct mlx5_pkt_reformat {TYPE_1__ action; } ;
struct mlx5_flow_root_namespace {int dummy; } ;


 int mlx5dr_action_destroy (int ) ;

__attribute__((used)) static void mlx5_cmd_dr_packet_reformat_dealloc(struct mlx5_flow_root_namespace *ns,
      struct mlx5_pkt_reformat *pkt_reformat)
{
 mlx5dr_action_destroy(pkt_reformat->action.dr_action);
}
