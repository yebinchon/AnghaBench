
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_kvdl {int * parts; } ;


 int MLXSW_SP2_KVDL_PARTS_INFO_LEN ;
 int mlxsw_sp2_kvdl_part_fini (int ) ;

__attribute__((used)) static void mlxsw_sp2_kvdl_parts_fini(struct mlxsw_sp2_kvdl *kvdl)
{
 int i;

 for (i = 0; i < MLXSW_SP2_KVDL_PARTS_INFO_LEN; i++)
  mlxsw_sp2_kvdl_part_fini(kvdl->parts[i]);
}
