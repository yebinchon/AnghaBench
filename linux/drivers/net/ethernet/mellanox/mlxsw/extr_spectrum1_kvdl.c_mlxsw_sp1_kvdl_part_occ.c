
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp1_kvdl_part_info {int end_index; int start_index; int alloc_size; } ;
struct mlxsw_sp1_kvdl_part {int usage; struct mlxsw_sp1_kvdl_part_info info; } ;


 int find_next_bit (int ,unsigned int,int) ;

__attribute__((used)) static u64 mlxsw_sp1_kvdl_part_occ(struct mlxsw_sp1_kvdl_part *part)
{
 const struct mlxsw_sp1_kvdl_part_info *info = &part->info;
 unsigned int nr_entries;
 int bit = -1;
 u64 occ = 0;

 nr_entries = (info->end_index -
        info->start_index + 1) /
        info->alloc_size;
 while ((bit = find_next_bit(part->usage, nr_entries, bit + 1))
  < nr_entries)
  occ += info->alloc_size;
 return occ;
}
