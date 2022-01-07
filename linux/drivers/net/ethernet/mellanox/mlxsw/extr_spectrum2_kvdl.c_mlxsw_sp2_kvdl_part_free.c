
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct mlxsw_sp2_kvdl_part {unsigned int indexes_per_usage_bit; int usage; TYPE_1__* info; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int res_type; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int __clear_bit (unsigned int,int ) ;
 int mlxsw_sp2_kvdl_rec_del (struct mlxsw_sp*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void mlxsw_sp2_kvdl_part_free(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp2_kvdl_part *part,
         unsigned int size, u32 kvdl_index)
{
 unsigned int bit_count;
 unsigned int bit;
 unsigned int i;
 int err;


 err = mlxsw_sp2_kvdl_rec_del(mlxsw_sp, part->info->res_type,
         size, kvdl_index);
 if (err)
  return;

 bit_count = DIV_ROUND_UP(size, part->indexes_per_usage_bit);
 bit = kvdl_index / part->indexes_per_usage_bit;
 for (i = 0; i < bit_count; i++)
  __clear_bit(bit + i, part->usage);
}
