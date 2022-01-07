
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_groups; scalar_t__ active; } ;
struct TYPE_4__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int hash; int fgs_hash; TYPE_1__ autogroup; int fte_allocator; int ftes_hash; TYPE_2__ node; } ;
struct mlx5_flow_steering {int fgs_cache; } ;
struct mlx5_flow_group {int hash; int fgs_hash; TYPE_1__ autogroup; int fte_allocator; int ftes_hash; TYPE_2__ node; } ;
struct fs_node {int dummy; } ;


 int WARN_ON (int) ;
 int fs_get_obj (struct mlx5_flow_table*,struct fs_node*) ;
 struct mlx5_flow_steering* get_steering (struct fs_node*) ;
 int ida_destroy (int *) ;
 int kmem_cache_free (int ,struct mlx5_flow_table*) ;
 int rhash_fg ;
 int rhashtable_destroy (int *) ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static void del_sw_flow_group(struct fs_node *node)
{
 struct mlx5_flow_steering *steering = get_steering(node);
 struct mlx5_flow_group *fg;
 struct mlx5_flow_table *ft;
 int err;

 fs_get_obj(fg, node);
 fs_get_obj(ft, fg->node.parent);

 rhashtable_destroy(&fg->ftes_hash);
 ida_destroy(&fg->fte_allocator);
 if (ft->autogroup.active)
  ft->autogroup.num_groups--;
 err = rhltable_remove(&ft->fgs_hash,
         &fg->hash,
         rhash_fg);
 WARN_ON(err);
 kmem_cache_free(steering->fgs_cache, fg);
}
