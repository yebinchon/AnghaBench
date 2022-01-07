
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_root_namespace {scalar_t__ mode; TYPE_1__* cmds; int dev; } ;
struct TYPE_2__ {int (* set_peer ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_root_namespace*) ;} ;


 int EINVAL ;
 int mlx5_core_err (int ,char*) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_root_namespace*) ;

int mlx5_flow_namespace_set_peer(struct mlx5_flow_root_namespace *ns,
     struct mlx5_flow_root_namespace *peer_ns)
{
 if (peer_ns && ns->mode != peer_ns->mode) {
  mlx5_core_err(ns->dev,
         "Can't peer namespace of different steering mode\n");
  return -EINVAL;
 }

 return ns->cmds->set_peer(ns, peer_ns);
}
