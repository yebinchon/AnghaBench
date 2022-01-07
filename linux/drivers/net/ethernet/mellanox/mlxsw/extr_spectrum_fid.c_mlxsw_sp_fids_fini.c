
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid_core {int fid_ht; int vni_ht; struct mlxsw_sp_fid_core* port_fid_mappings; int * fid_family_arr; } ;
struct mlxsw_sp {struct mlxsw_sp_fid_core* fid_core; } ;


 int MLXSW_SP_FID_TYPE_MAX ;
 int kfree (struct mlxsw_sp_fid_core*) ;
 int mlxsw_sp_fid_family_unregister (struct mlxsw_sp*,int ) ;
 int rhashtable_destroy (int *) ;

void mlxsw_sp_fids_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_fid_core *fid_core = mlxsw_sp->fid_core;
 int i;

 for (i = 0; i < MLXSW_SP_FID_TYPE_MAX; i++)
  mlxsw_sp_fid_family_unregister(mlxsw_sp,
            fid_core->fid_family_arr[i]);
 kfree(fid_core->port_fid_mappings);
 rhashtable_destroy(&fid_core->vni_ht);
 rhashtable_destroy(&fid_core->fid_ht);
 kfree(fid_core);
}
