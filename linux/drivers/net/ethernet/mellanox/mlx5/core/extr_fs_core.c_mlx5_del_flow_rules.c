
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mlx5_flow_handle {int num_rules; TYPE_1__** rule; } ;
struct TYPE_8__ {int lock; } ;
struct fs_fte {TYPE_2__ node; scalar_t__ dests_size; scalar_t__ modify_mask; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_7__ {TYPE_3__ node; } ;


 int del_hw_fte (TYPE_2__*) ;
 int down_write_ref_node (TYPE_2__*,int) ;
 int fs_get_obj (struct fs_fte*,int ) ;
 int kfree (struct mlx5_flow_handle*) ;
 int modify_fte (struct fs_fte*) ;
 int tree_put_node (TYPE_2__*,int) ;
 int tree_remove_node (TYPE_3__*,int) ;
 int up_write (int *) ;
 int up_write_ref_node (TYPE_2__*,int) ;

void mlx5_del_flow_rules(struct mlx5_flow_handle *handle)
{
 struct fs_fte *fte;
 int i;
 fs_get_obj(fte, handle->rule[0]->node.parent);
 down_write_ref_node(&fte->node, 0);
 for (i = handle->num_rules - 1; i >= 0; i--)
  tree_remove_node(&handle->rule[i]->node, 1);
 if (fte->modify_mask && fte->dests_size) {
  modify_fte(fte);
  up_write_ref_node(&fte->node, 0);
 } else {
  del_hw_fte(&fte->node);
  up_write(&fte->node.lock);
  tree_put_node(&fte->node, 0);
 }
 kfree(handle);
}
