
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int end_index; unsigned int start_index; } ;
struct mlxsw_sp1_kvdl_part {TYPE_1__ info; } ;



__attribute__((used)) static void mlxsw_sp1_kvdl_part_update(struct mlxsw_sp1_kvdl_part *part,
           struct mlxsw_sp1_kvdl_part *part_prev,
           unsigned int size)
{
 if (!part_prev) {
  part->info.end_index = size - 1;
 } else {
  part->info.start_index = part_prev->info.end_index + 1;
  part->info.end_index = part->info.start_index + size - 1;
 }
}
