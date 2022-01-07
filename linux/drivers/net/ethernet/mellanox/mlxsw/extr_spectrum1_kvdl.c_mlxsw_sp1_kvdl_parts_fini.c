
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_kvdl {int * parts; } ;


 int MLXSW_SP1_KVDL_PARTS_INFO_LEN ;
 int mlxsw_sp1_kvdl_part_fini (int ) ;

__attribute__((used)) static void mlxsw_sp1_kvdl_parts_fini(struct mlxsw_sp1_kvdl *kvdl)
{
 int i;

 for (i = 0; i < MLXSW_SP1_KVDL_PARTS_INFO_LEN; i++)
  mlxsw_sp1_kvdl_part_fini(kvdl->parts[i]);
}
