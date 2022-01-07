
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int active; } ;
struct mlx5_flow_group {TYPE_1__ node; int ftes_hash; } ;
struct fs_fte {TYPE_1__ node; } ;


 int FS_LOCK_CHILD ;
 int FS_LOCK_PARENT ;
 int nested_down_read_ref_node (TYPE_1__*,int ) ;
 int nested_down_write_ref_node (TYPE_1__*,int ) ;
 int rhash_fte ;
 struct fs_fte* rhashtable_lookup_fast (int *,int const*,int ) ;
 int tree_get_node (TYPE_1__*) ;
 int tree_put_node (TYPE_1__*,int) ;
 int up_read_ref_node (TYPE_1__*) ;
 int up_write_ref_node (TYPE_1__*,int) ;

__attribute__((used)) static struct fs_fte *
lookup_fte_locked(struct mlx5_flow_group *g,
    const u32 *match_value,
    bool take_write)
{
 struct fs_fte *fte_tmp;

 if (take_write)
  nested_down_write_ref_node(&g->node, FS_LOCK_PARENT);
 else
  nested_down_read_ref_node(&g->node, FS_LOCK_PARENT);
 fte_tmp = rhashtable_lookup_fast(&g->ftes_hash, match_value,
      rhash_fte);
 if (!fte_tmp || !tree_get_node(&fte_tmp->node)) {
  fte_tmp = ((void*)0);
  goto out;
 }
 if (!fte_tmp->node.active) {
  tree_put_node(&fte_tmp->node, 0);
  fte_tmp = ((void*)0);
  goto out;
 }

 nested_down_write_ref_node(&fte_tmp->node, FS_LOCK_CHILD);
out:
 if (take_write)
  up_write_ref_node(&g->node, 0);
 else
  up_read_ref_node(&g->node);
 return fte_tmp;
}
