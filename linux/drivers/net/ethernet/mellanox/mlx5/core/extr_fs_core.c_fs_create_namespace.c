
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct mlx5_flow_namespace {int def_miss_action; TYPE_1__ node; } ;
struct TYPE_5__ {int children; } ;
struct fs_prio {TYPE_3__ node; } ;


 int ENOMEM ;
 struct mlx5_flow_namespace* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int del_sw_ns ;
 int fs_init_namespace (struct mlx5_flow_namespace*) ;
 struct mlx5_flow_namespace* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int tree_add_node (TYPE_1__*,TYPE_3__*) ;
 int tree_init_node (TYPE_1__*,int *,int ) ;

__attribute__((used)) static struct mlx5_flow_namespace *fs_create_namespace(struct fs_prio *prio,
             int def_miss_act)
{
 struct mlx5_flow_namespace *ns;

 ns = kzalloc(sizeof(*ns), GFP_KERNEL);
 if (!ns)
  return ERR_PTR(-ENOMEM);

 fs_init_namespace(ns);
 ns->def_miss_action = def_miss_act;
 tree_init_node(&ns->node, ((void*)0), del_sw_ns);
 tree_add_node(&ns->node, &prio->node);
 list_add_tail(&ns->node.list, &prio->node.children);

 return ns;
}
