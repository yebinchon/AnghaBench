
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int dummy; } ;
struct fs_prio {int dummy; } ;


 int FS_TYPE_PRIO_CHAINS ;
 struct fs_prio* _fs_create_prio (struct mlx5_flow_namespace*,unsigned int,int,int ) ;

__attribute__((used)) static struct fs_prio *fs_create_prio_chained(struct mlx5_flow_namespace *ns,
           unsigned int prio,
           int num_levels)
{
 return _fs_create_prio(ns, prio, num_levels, FS_TYPE_PRIO_CHAINS);
}
