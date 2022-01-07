
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int version; } ;
struct mlx5_flow_table {TYPE_3__ node; int fgs_hash; } ;
struct mlx5_flow_steering {int dummy; } ;
struct TYPE_5__ {int list; } ;
struct mlx5_flow_group {TYPE_1__ node; int hash; } ;
struct list_head {int dummy; } ;


 struct mlx5_flow_group* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_flow_group*) ;
 struct mlx5_flow_group* alloc_flow_group (struct mlx5_flow_steering*,int ,void const*,int,int) ;
 int atomic_inc (int *) ;
 int dealloc_flow_group (struct mlx5_flow_steering*,struct mlx5_flow_group*) ;
 int del_hw_flow_group ;
 int del_sw_flow_group ;
 struct mlx5_flow_steering* get_steering (TYPE_3__*) ;
 int list_add (int *,struct list_head*) ;
 int rhash_fg ;
 int rhltable_insert (int *,int *,int ) ;
 int tree_add_node (TYPE_1__*,TYPE_3__*) ;
 int tree_init_node (TYPE_1__*,int ,int ) ;

__attribute__((used)) static struct mlx5_flow_group *alloc_insert_flow_group(struct mlx5_flow_table *ft,
             u8 match_criteria_enable,
             const void *match_criteria,
             int start_index,
             int end_index,
             struct list_head *prev)
{
 struct mlx5_flow_steering *steering = get_steering(&ft->node);
 struct mlx5_flow_group *fg;
 int ret;

 fg = alloc_flow_group(steering, match_criteria_enable, match_criteria,
         start_index, end_index);
 if (IS_ERR(fg))
  return fg;


 ret = rhltable_insert(&ft->fgs_hash,
         &fg->hash,
         rhash_fg);
 if (ret) {
  dealloc_flow_group(steering, fg);
  return ERR_PTR(ret);
 }

 tree_init_node(&fg->node, del_hw_flow_group, del_sw_flow_group);
 tree_add_node(&fg->node, &ft->node);

 list_add(&fg->node.list, prev);
 atomic_inc(&ft->node.version);

 return fg;
}
