
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp1_kvdl_part {int dummy; } ;
struct mlxsw_sp1_kvdl {struct mlxsw_sp1_kvdl_part** parts; } ;


 size_t MLXSW_SP1_KVDL_PART_ID_CHUNKS ;
 int mlxsw_sp1_kvdl_part_occ (struct mlxsw_sp1_kvdl_part*) ;

__attribute__((used)) static u64 mlxsw_sp1_kvdl_chunks_occ_get(void *priv)
{
 const struct mlxsw_sp1_kvdl *kvdl = priv;
 struct mlxsw_sp1_kvdl_part *part;

 part = kvdl->parts[MLXSW_SP1_KVDL_PART_ID_CHUNKS];
 return mlxsw_sp1_kvdl_part_occ(part);
}
