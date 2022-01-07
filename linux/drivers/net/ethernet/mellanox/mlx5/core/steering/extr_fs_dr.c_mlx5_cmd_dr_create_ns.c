
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr_domain; } ;
struct mlx5_flow_root_namespace {int dev; TYPE_1__ fs_dr_domain; } ;


 int EOPNOTSUPP ;
 int MLX5DR_DOMAIN_TYPE_FDB ;
 int mlx5_core_err (int ,char*) ;
 int mlx5dr_domain_create (int ,int ) ;

__attribute__((used)) static int mlx5_cmd_dr_create_ns(struct mlx5_flow_root_namespace *ns)
{
 ns->fs_dr_domain.dr_domain =
  mlx5dr_domain_create(ns->dev,
         MLX5DR_DOMAIN_TYPE_FDB);
 if (!ns->fs_dr_domain.dr_domain) {
  mlx5_core_err(ns->dev, "Failed to create dr flow namespace\n");
  return -EOPNOTSUPP;
 }
 return 0;
}
