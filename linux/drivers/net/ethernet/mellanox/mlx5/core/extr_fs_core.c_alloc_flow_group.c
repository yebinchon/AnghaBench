
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_flow_steering {int fgs_cache; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int match_criteria; int match_criteria_enable; } ;
struct mlx5_flow_group {int start_index; int max_ftes; TYPE_2__ node; TYPE_1__ mask; int fte_allocator; int ftes_hash; } ;


 int ENOMEM ;
 struct mlx5_flow_group* ERR_PTR (int) ;
 int FS_TYPE_FLOW_GROUP ;
 int GFP_KERNEL ;
 int ida_init (int *) ;
 int kmem_cache_free (int ,struct mlx5_flow_group*) ;
 struct mlx5_flow_group* kmem_cache_zalloc (int ,int ) ;
 int memcpy (int *,void const*,int) ;
 int rhash_fte ;
 int rhashtable_init (int *,int *) ;

__attribute__((used)) static struct mlx5_flow_group *alloc_flow_group(struct mlx5_flow_steering *steering,
      u8 match_criteria_enable,
      const void *match_criteria,
      int start_index,
      int end_index)
{
 struct mlx5_flow_group *fg;
 int ret;

 fg = kmem_cache_zalloc(steering->fgs_cache, GFP_KERNEL);
 if (!fg)
  return ERR_PTR(-ENOMEM);

 ret = rhashtable_init(&fg->ftes_hash, &rhash_fte);
 if (ret) {
  kmem_cache_free(steering->fgs_cache, fg);
  return ERR_PTR(ret);
 }

 ida_init(&fg->fte_allocator);
 fg->mask.match_criteria_enable = match_criteria_enable;
 memcpy(&fg->mask.match_criteria, match_criteria,
        sizeof(fg->mask.match_criteria));
 fg->node.type = FS_TYPE_FLOW_GROUP;
 fg->start_index = start_index;
 fg->max_ftes = end_index - start_index + 1;

 return fg;
}
