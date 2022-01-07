
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlxsw_sp1_kvdl_part_info {int alloc_size; scalar_t__ start_index; scalar_t__ end_index; int resource_id; } ;
struct mlxsw_sp1_kvdl_part {int info; } ;
struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int BITS_TO_LONGS (unsigned int) ;
 int ENOMEM ;
 struct mlxsw_sp1_kvdl_part* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int devlink_resource_size_get (struct devlink*,int ,scalar_t__*) ;
 unsigned int div_u64 (scalar_t__,int ) ;
 struct mlxsw_sp1_kvdl_part* kzalloc (int,int ) ;
 int memcpy (int *,struct mlxsw_sp1_kvdl_part_info const*,int) ;
 int mlxsw_sp1_kvdl_part_update (struct mlxsw_sp1_kvdl_part*,struct mlxsw_sp1_kvdl_part*,scalar_t__) ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static struct mlxsw_sp1_kvdl_part *
mlxsw_sp1_kvdl_part_init(struct mlxsw_sp *mlxsw_sp,
    const struct mlxsw_sp1_kvdl_part_info *info,
    struct mlxsw_sp1_kvdl_part *part_prev)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);
 struct mlxsw_sp1_kvdl_part *part;
 bool need_update = 1;
 unsigned int nr_entries;
 size_t usage_size;
 u64 resource_size;
 int err;

 err = devlink_resource_size_get(devlink, info->resource_id,
     &resource_size);
 if (err) {
  need_update = 0;
  resource_size = info->end_index - info->start_index + 1;
 }

 nr_entries = div_u64(resource_size, info->alloc_size);
 usage_size = BITS_TO_LONGS(nr_entries) * sizeof(unsigned long);
 part = kzalloc(sizeof(*part) + usage_size, GFP_KERNEL);
 if (!part)
  return ERR_PTR(-ENOMEM);

 memcpy(&part->info, info, sizeof(part->info));

 if (need_update)
  mlxsw_sp1_kvdl_part_update(part, part_prev, resource_size);
 return part;
}
