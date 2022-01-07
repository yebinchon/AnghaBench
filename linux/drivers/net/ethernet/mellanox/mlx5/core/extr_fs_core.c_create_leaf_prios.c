
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int dummy; } ;
struct init_tree_node {int num_leaf_prios; int num_levels; } ;
struct fs_prio {int dummy; } ;


 scalar_t__ IS_ERR (struct fs_prio*) ;
 int PTR_ERR (struct fs_prio*) ;
 struct fs_prio* fs_create_prio (struct mlx5_flow_namespace*,int ,int ) ;

__attribute__((used)) static int create_leaf_prios(struct mlx5_flow_namespace *ns, int prio,
        struct init_tree_node *prio_metadata)
{
 struct fs_prio *fs_prio;
 int i;

 for (i = 0; i < prio_metadata->num_leaf_prios; i++) {
  fs_prio = fs_create_prio(ns, prio++, prio_metadata->num_levels);
  if (IS_ERR(fs_prio))
   return PTR_ERR(fs_prio);
 }
 return 0;
}
