
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp1_kvdl_part_info {int dummy; } ;
struct mlxsw_sp1_kvdl_part {int usage; struct mlxsw_sp1_kvdl_part_info info; } ;


 int __clear_bit (unsigned int,int ) ;
 unsigned int mlxsw_sp1_kvdl_to_entry_index (struct mlxsw_sp1_kvdl_part_info const*,int ) ;

__attribute__((used)) static void mlxsw_sp1_kvdl_part_free(struct mlxsw_sp1_kvdl_part *part,
         u32 kvdl_index)
{
 const struct mlxsw_sp1_kvdl_part_info *info = &part->info;
 unsigned int entry_index;

 entry_index = mlxsw_sp1_kvdl_to_entry_index(info, kvdl_index);
 __clear_bit(entry_index, part->usage);
}
