
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mlx5_flow_namespace {TYPE_1__ node; } ;


 int FS_TYPE_NAMESPACE ;

__attribute__((used)) static struct mlx5_flow_namespace *fs_init_namespace(struct mlx5_flow_namespace
           *ns)
{
 ns->node.type = FS_TYPE_NAMESPACE;

 return ns;
}
