
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_pkt_reformat {int ns_type; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int (* packet_reformat_dealloc ) (struct mlx5_flow_root_namespace*,struct mlx5_pkt_reformat*) ;} ;


 scalar_t__ WARN_ON (int) ;
 struct mlx5_flow_root_namespace* get_root_namespace (struct mlx5_core_dev*,int ) ;
 int kfree (struct mlx5_pkt_reformat*) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_pkt_reformat*) ;

void mlx5_packet_reformat_dealloc(struct mlx5_core_dev *dev,
      struct mlx5_pkt_reformat *pkt_reformat)
{
 struct mlx5_flow_root_namespace *root;

 root = get_root_namespace(dev, pkt_reformat->ns_type);
 if (WARN_ON(!root))
  return;
 root->cmds->packet_reformat_dealloc(root, pkt_reformat);
 kfree(pkt_reformat);
}
