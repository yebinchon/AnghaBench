
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_acl_tcam {int kvdl_index; int kvdl_count; int atcam; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET ;
 int mlxsw_sp_acl_atcam_fini (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_sp2_acl_tcam_fini(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 struct mlxsw_sp2_acl_tcam *tcam = priv;

 mlxsw_sp_acl_atcam_fini(mlxsw_sp, &tcam->atcam);
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
      tcam->kvdl_count, tcam->kvdl_index);
}
