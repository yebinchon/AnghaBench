
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
struct TYPE_3__ {struct mlx5dr_action* dr_action; } ;
struct mlx5_pkt_reformat {TYPE_1__ action; } ;
struct TYPE_4__ {struct mlx5dr_domain* dr_domain; } ;
struct mlx5_flow_root_namespace {int dev; TYPE_2__ fs_dr_domain; } ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 int DR_ACTION_REFORMAT_TYP_L2_TO_TNL_L2 ;
 int DR_ACTION_REFORMAT_TYP_L2_TO_TNL_L3 ;
 int DR_ACTION_REFORMAT_TYP_TNL_L3_TO_L2 ;
 int EINVAL ;
 int EOPNOTSUPP ;





 int mlx5_core_err (int ,char*,...) ;
 struct mlx5dr_action* mlx5dr_action_create_packet_reformat (struct mlx5dr_domain*,int,size_t,void*) ;

__attribute__((used)) static int mlx5_cmd_dr_packet_reformat_alloc(struct mlx5_flow_root_namespace *ns,
          int reformat_type,
          size_t size,
          void *reformat_data,
          enum mlx5_flow_namespace_type namespace,
          struct mlx5_pkt_reformat *pkt_reformat)
{
 struct mlx5dr_domain *dr_domain = ns->fs_dr_domain.dr_domain;
 struct mlx5dr_action *action;
 int dr_reformat;

 switch (reformat_type) {
 case 129:
 case 130:
 case 132:
  dr_reformat = DR_ACTION_REFORMAT_TYP_L2_TO_TNL_L2;
  break;
 case 128:
  dr_reformat = DR_ACTION_REFORMAT_TYP_TNL_L3_TO_L2;
  break;
 case 131:
  dr_reformat = DR_ACTION_REFORMAT_TYP_L2_TO_TNL_L3;
  break;
 default:
  mlx5_core_err(ns->dev, "Packet-reformat not supported(%d)\n",
         reformat_type);
  return -EOPNOTSUPP;
 }

 action = mlx5dr_action_create_packet_reformat(dr_domain,
            dr_reformat,
            size,
            reformat_data);
 if (!action) {
  mlx5_core_err(ns->dev, "Failed allocating packet-reformat action\n");
  return -EINVAL;
 }

 pkt_reformat->action.dr_action = action;

 return 0;
}
