
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_record {int num_entries; int kvdl_index; int list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT ;
 int WARN_ON (int ) ;
 int kfree (struct mlxsw_sp_nve_mc_record*) ;
 int list_del (int *) ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_destroy(struct mlxsw_sp_nve_mc_record *mc_record)
{
 struct mlxsw_sp *mlxsw_sp = mc_record->mlxsw_sp;

 list_del(&mc_record->list);
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT, 1,
      mc_record->kvdl_index);
 WARN_ON(mc_record->num_entries);
 kfree(mc_record);
}
