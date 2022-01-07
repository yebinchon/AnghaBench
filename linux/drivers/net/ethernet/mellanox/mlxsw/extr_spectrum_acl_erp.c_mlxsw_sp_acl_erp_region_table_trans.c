
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {int base_index; TYPE_1__* aregion; int num_max_atcam_erps; int erp_index_bitmap; struct mlxsw_sp_acl_erp_core* erp_core; } ;
struct mlxsw_sp_acl_erp_core {int num_erp_banks; } ;
struct mlxsw_sp_acl_erp {scalar_t__ index; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int __clear_bit (scalar_t__,int ) ;
 int __set_bit (scalar_t__,int ) ;
 int mlxsw_acl_erp_table_bf_add (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_acl_erp_table_bf_del (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_alloc (struct mlxsw_sp_acl_erp_core*,int ,int ,int *) ;
 int mlxsw_sp_acl_erp_table_enable (struct mlxsw_sp_acl_erp_table*,int) ;
 int mlxsw_sp_acl_erp_table_erp_add (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_erp_del (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_free (struct mlxsw_sp_acl_erp_core*,int ,int ,int ) ;
 struct mlxsw_sp_acl_erp* mlxsw_sp_acl_erp_table_master_rp (struct mlxsw_sp_acl_erp_table*) ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_region_table_trans(struct mlxsw_sp_acl_erp_table *erp_table)
{
 struct mlxsw_sp_acl_erp_core *erp_core = erp_table->erp_core;
 struct mlxsw_sp_acl_erp *master_rp;
 int err;


 err = mlxsw_sp_acl_erp_table_alloc(erp_core, erp_core->num_erp_banks,
        erp_table->aregion->type,
        &erp_table->base_index);
 if (err)
  return err;
 erp_table->num_max_atcam_erps = erp_core->num_erp_banks;




 master_rp = mlxsw_sp_acl_erp_table_master_rp(erp_table);
 if (!master_rp) {
  err = -EINVAL;
  goto err_table_master_rp;
 }




 master_rp->index = 0;
 __set_bit(master_rp->index, erp_table->erp_index_bitmap);

 err = mlxsw_sp_acl_erp_table_erp_add(erp_table, master_rp);
 if (err)
  goto err_table_master_rp_add;





 err = mlxsw_acl_erp_table_bf_add(erp_table, master_rp);
 if (err)
  goto err_table_bf_add;

 err = mlxsw_sp_acl_erp_table_enable(erp_table, 0);
 if (err)
  goto err_table_enable;

 return 0;

err_table_enable:
 mlxsw_acl_erp_table_bf_del(erp_table, master_rp);
err_table_bf_add:
 mlxsw_sp_acl_erp_table_erp_del(master_rp);
err_table_master_rp_add:
 __clear_bit(master_rp->index, erp_table->erp_index_bitmap);
err_table_master_rp:
 mlxsw_sp_acl_erp_table_free(erp_core, erp_table->num_max_atcam_erps,
        erp_table->aregion->type,
        erp_table->base_index);
 return err;
}
