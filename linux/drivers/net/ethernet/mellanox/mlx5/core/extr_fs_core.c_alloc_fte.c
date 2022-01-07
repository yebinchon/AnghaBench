
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_table {int node; } ;
struct mlx5_flow_steering {int ftes_cache; } ;
struct mlx5_flow_spec {int flow_context; int match_value; } ;
struct mlx5_flow_act {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct fs_fte {TYPE_1__ node; int flow_context; struct mlx5_flow_act action; int val; } ;


 int ENOMEM ;
 struct fs_fte* ERR_PTR (int ) ;
 int FS_TYPE_FLOW_ENTRY ;
 int GFP_KERNEL ;
 int del_sw_fte ;
 struct mlx5_flow_steering* get_steering (int *) ;
 struct fs_fte* kmem_cache_zalloc (int ,int ) ;
 int memcpy (int ,int *,int) ;
 int tree_init_node (TYPE_1__*,int *,int ) ;

__attribute__((used)) static struct fs_fte *alloc_fte(struct mlx5_flow_table *ft,
    const struct mlx5_flow_spec *spec,
    struct mlx5_flow_act *flow_act)
{
 struct mlx5_flow_steering *steering = get_steering(&ft->node);
 struct fs_fte *fte;

 fte = kmem_cache_zalloc(steering->ftes_cache, GFP_KERNEL);
 if (!fte)
  return ERR_PTR(-ENOMEM);

 memcpy(fte->val, &spec->match_value, sizeof(fte->val));
 fte->node.type = FS_TYPE_FLOW_ENTRY;
 fte->action = *flow_act;
 fte->flow_context = spec->flow_context;

 tree_init_node(&fte->node, ((void*)0), del_sw_fte);

 return fte;
}
