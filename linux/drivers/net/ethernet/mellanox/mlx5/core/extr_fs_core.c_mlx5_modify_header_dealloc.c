
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_modify_hdr {int ns_type; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int (* modify_header_dealloc ) (struct mlx5_flow_root_namespace*,struct mlx5_modify_hdr*) ;} ;


 scalar_t__ WARN_ON (int) ;
 struct mlx5_flow_root_namespace* get_root_namespace (struct mlx5_core_dev*,int ) ;
 int kfree (struct mlx5_modify_hdr*) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_modify_hdr*) ;

void mlx5_modify_header_dealloc(struct mlx5_core_dev *dev,
    struct mlx5_modify_hdr *modify_hdr)
{
 struct mlx5_flow_root_namespace *root;

 root = get_root_namespace(dev, modify_hdr->ns_type);
 if (WARN_ON(!root))
  return;
 root->cmds->modify_header_dealloc(root, modify_hdr);
 kfree(modify_hdr);
}
