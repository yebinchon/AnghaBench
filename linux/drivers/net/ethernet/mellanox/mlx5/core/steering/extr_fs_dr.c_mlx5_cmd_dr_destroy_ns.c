
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr_domain; } ;
struct mlx5_flow_root_namespace {TYPE_1__ fs_dr_domain; } ;


 int mlx5dr_domain_destroy (int ) ;

__attribute__((used)) static int mlx5_cmd_dr_destroy_ns(struct mlx5_flow_root_namespace *ns)
{
 return mlx5dr_domain_destroy(ns->fs_dr_domain.dr_domain);
}
