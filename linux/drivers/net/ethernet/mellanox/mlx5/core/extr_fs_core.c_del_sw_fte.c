
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {int ftes_cache; } ;
struct TYPE_2__ {struct fs_node* parent; } ;
struct mlx5_flow_group {scalar_t__ start_index; scalar_t__ index; int fte_allocator; int hash; int ftes_hash; TYPE_1__ node; } ;
struct fs_node {int dummy; } ;
struct fs_fte {scalar_t__ start_index; scalar_t__ index; int fte_allocator; int hash; int ftes_hash; TYPE_1__ node; } ;


 int WARN_ON (int) ;
 int fs_get_obj (struct mlx5_flow_group*,struct fs_node*) ;
 struct mlx5_flow_steering* get_steering (struct fs_node*) ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kmem_cache_free (int ,struct mlx5_flow_group*) ;
 int rhash_fte ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void del_sw_fte(struct fs_node *node)
{
 struct mlx5_flow_steering *steering = get_steering(node);
 struct mlx5_flow_group *fg;
 struct fs_fte *fte;
 int err;

 fs_get_obj(fte, node);
 fs_get_obj(fg, fte->node.parent);

 err = rhashtable_remove_fast(&fg->ftes_hash,
         &fte->hash,
         rhash_fte);
 WARN_ON(err);
 ida_simple_remove(&fg->fte_allocator, fte->index - fg->start_index);
 kmem_cache_free(steering->ftes_cache, fte);
}
