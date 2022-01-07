
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct mlx5_flow_root_namespace {TYPE_1__ ns; } ;


 int clean_tree (int *) ;

__attribute__((used)) static void cleanup_root_ns(struct mlx5_flow_root_namespace *root_ns)
{
 if (!root_ns)
  return;

 clean_tree(&root_ns->ns.node);
}
