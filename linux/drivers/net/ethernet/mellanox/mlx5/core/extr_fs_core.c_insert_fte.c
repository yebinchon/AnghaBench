
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int children; } ;
struct mlx5_flow_group {int start_index; int fte_allocator; TYPE_2__ node; int ftes_hash; int max_ftes; } ;
struct TYPE_3__ {int list; } ;
struct fs_fte {int index; TYPE_1__ node; int hash; } ;


 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int list_add_tail (int *,int *) ;
 int rhash_fte ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int tree_add_node (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int insert_fte(struct mlx5_flow_group *fg, struct fs_fte *fte)
{
 int index;
 int ret;

 index = ida_simple_get(&fg->fte_allocator, 0, fg->max_ftes, GFP_KERNEL);
 if (index < 0)
  return index;

 fte->index = index + fg->start_index;
 ret = rhashtable_insert_fast(&fg->ftes_hash,
         &fte->hash,
         rhash_fte);
 if (ret)
  goto err_ida_remove;

 tree_add_node(&fte->node, &fg->node);
 list_add_tail(&fte->node.list, &fg->node.children);
 return 0;

err_ida_remove:
 ida_simple_remove(&fg->fte_allocator, index);
 return ret;
}
