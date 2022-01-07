
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ start_index; scalar_t__ end_index; } ;
struct mlxsw_sp1_kvdl_part {TYPE_1__ info; } ;
struct mlxsw_sp1_kvdl {struct mlxsw_sp1_kvdl_part** parts; } ;


 int EINVAL ;
 struct mlxsw_sp1_kvdl_part* ERR_PTR (int ) ;
 int MLXSW_SP1_KVDL_PARTS_INFO_LEN ;

__attribute__((used)) static struct mlxsw_sp1_kvdl_part *
mlxsw_sp1_kvdl_index_part(struct mlxsw_sp1_kvdl *kvdl, u32 kvdl_index)
{
 struct mlxsw_sp1_kvdl_part *part;
 int i;

 for (i = 0; i < MLXSW_SP1_KVDL_PARTS_INFO_LEN; i++) {
  part = kvdl->parts[i];
  if (kvdl_index >= part->info.start_index &&
      kvdl_index <= part->info.end_index)
   return part;
 }

 return ERR_PTR(-EINVAL);
}
