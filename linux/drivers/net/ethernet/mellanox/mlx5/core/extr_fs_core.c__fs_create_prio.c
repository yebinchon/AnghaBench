
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int children; } ;
struct mlx5_flow_namespace {TYPE_3__ node; } ;
struct TYPE_4__ {int type; int list; } ;
struct fs_prio {int num_levels; unsigned int prio; TYPE_1__ node; } ;
typedef enum fs_node_type { ____Placeholder_fs_node_type } fs_node_type ;


 int ENOMEM ;
 struct fs_prio* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int del_sw_prio ;
 struct fs_prio* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int tree_add_node (TYPE_1__*,TYPE_3__*) ;
 int tree_init_node (TYPE_1__*,int *,int ) ;

__attribute__((used)) static struct fs_prio *_fs_create_prio(struct mlx5_flow_namespace *ns,
           unsigned int prio,
           int num_levels,
           enum fs_node_type type)
{
 struct fs_prio *fs_prio;

 fs_prio = kzalloc(sizeof(*fs_prio), GFP_KERNEL);
 if (!fs_prio)
  return ERR_PTR(-ENOMEM);

 fs_prio->node.type = type;
 tree_init_node(&fs_prio->node, ((void*)0), del_sw_prio);
 tree_add_node(&fs_prio->node, &ns->node);
 fs_prio->num_levels = num_levels;
 fs_prio->prio = prio;
 list_add_tail(&fs_prio->node.list, &ns->node.children);

 return fs_prio;
}
