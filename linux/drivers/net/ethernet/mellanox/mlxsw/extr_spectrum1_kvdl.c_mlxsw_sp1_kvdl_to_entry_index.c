
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mlxsw_sp1_kvdl_part_info {unsigned int start_index; unsigned int alloc_size; } ;



__attribute__((used)) static unsigned int
mlxsw_sp1_kvdl_to_entry_index(const struct mlxsw_sp1_kvdl_part_info *info,
         u32 kvdl_index)
{
 return (kvdl_index - info->start_index) / info->alloc_size;
}
