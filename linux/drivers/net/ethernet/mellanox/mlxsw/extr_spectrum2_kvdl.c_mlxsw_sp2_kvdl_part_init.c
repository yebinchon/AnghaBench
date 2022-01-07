
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_kvdl_part_info {int index_range_res_id; int usage_bit_count_res_id; } ;
struct mlxsw_sp2_kvdl_part {unsigned int usage_bit_count; unsigned int indexes_per_usage_bit; unsigned int last_allocated_bit; struct mlxsw_sp2_kvdl_part_info const* info; } ;
struct mlxsw_sp {int core; } ;


 int BITS_TO_LONGS (unsigned int) ;
 int EIO ;
 int ENOMEM ;
 struct mlxsw_sp2_kvdl_part* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct mlxsw_sp2_kvdl_part* kzalloc (int,int ) ;
 unsigned int mlxsw_core_res_get (int ,int ) ;
 int mlxsw_core_res_valid (int ,int ) ;

__attribute__((used)) static struct mlxsw_sp2_kvdl_part *
mlxsw_sp2_kvdl_part_init(struct mlxsw_sp *mlxsw_sp,
    const struct mlxsw_sp2_kvdl_part_info *info)
{
 unsigned int indexes_per_usage_bit;
 struct mlxsw_sp2_kvdl_part *part;
 unsigned int index_range;
 unsigned int usage_bit_count;
 size_t usage_size;

 if (!mlxsw_core_res_valid(mlxsw_sp->core,
      info->usage_bit_count_res_id) ||
     !mlxsw_core_res_valid(mlxsw_sp->core,
      info->index_range_res_id))
  return ERR_PTR(-EIO);
 usage_bit_count = mlxsw_core_res_get(mlxsw_sp->core,
          info->usage_bit_count_res_id);
 index_range = mlxsw_core_res_get(mlxsw_sp->core,
      info->index_range_res_id);





 indexes_per_usage_bit = index_range / usage_bit_count;

 usage_size = BITS_TO_LONGS(usage_bit_count) * sizeof(unsigned long);
 part = kzalloc(sizeof(*part) + usage_size, GFP_KERNEL);
 if (!part)
  return ERR_PTR(-ENOMEM);
 part->info = info;
 part->usage_bit_count = usage_bit_count;
 part->indexes_per_usage_bit = indexes_per_usage_bit;
 part->last_allocated_bit = usage_bit_count - 1;
 return part;
}
