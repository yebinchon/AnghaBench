
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_erif_sublist {int rigr2_kvdl_index; int list; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR ;
 int kfree (struct mlxsw_sp_mr_erif_sublist*) ;
 int list_del (int *) ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int,int ) ;

__attribute__((used)) static void
mlxsw_sp_mr_erif_sublist_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_mr_erif_sublist *erif_sublist)
{
 list_del(&erif_sublist->list);
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR,
      1, erif_sublist->rigr2_kvdl_index);
 kfree(erif_sublist);
}
