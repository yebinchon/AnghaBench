
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int * ops; } ;
struct mlxsw_sp_acl_erp_key {scalar_t__ ctcam; } ;
struct mlxsw_sp_acl_erp {int index; } ;


 struct mlxsw_sp_acl_erp* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlxsw_sp_acl_erp*) ;
 int PTR_ERR (struct mlxsw_sp_acl_erp*) ;
 int erp_two_masks_ops ;
 struct mlxsw_sp_acl_erp* mlxsw_sp_acl_erp_ctcam_mask_create (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ;
 struct mlxsw_sp_acl_erp* mlxsw_sp_acl_erp_generic_create (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ;
 int mlxsw_sp_acl_erp_generic_destroy (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_index_get (struct mlxsw_sp_acl_erp_table*,int *) ;
 int mlxsw_sp_acl_erp_index_put (struct mlxsw_sp_acl_erp_table*,int ) ;
 int mlxsw_sp_acl_erp_region_erp_add (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_region_master_mask_trans (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_region_table_trans (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_table_erp_add (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_erp_del (struct mlxsw_sp_acl_erp*) ;

__attribute__((used)) static struct mlxsw_sp_acl_erp *
mlxsw_sp_acl_erp_second_mask_create(struct mlxsw_sp_acl_erp_table *erp_table,
        struct mlxsw_sp_acl_erp_key *key)
{
 struct mlxsw_sp_acl_erp *erp;
 int err;

 if (key->ctcam)
  return mlxsw_sp_acl_erp_ctcam_mask_create(erp_table, key);


 err = mlxsw_sp_acl_erp_region_table_trans(erp_table);
 if (err)
  return ERR_PTR(err);

 erp = mlxsw_sp_acl_erp_generic_create(erp_table, key);
 if (IS_ERR(erp)) {
  err = PTR_ERR(erp);
  goto err_erp_create;
 }

 err = mlxsw_sp_acl_erp_index_get(erp_table, &erp->index);
 if (err)
  goto err_erp_index_get;

 err = mlxsw_sp_acl_erp_table_erp_add(erp_table, erp);
 if (err)
  goto err_table_erp_add;

 err = mlxsw_sp_acl_erp_region_erp_add(erp_table, erp);
 if (err)
  goto err_region_erp_add;

 erp_table->ops = &erp_two_masks_ops;

 return erp;

err_region_erp_add:
 mlxsw_sp_acl_erp_table_erp_del(erp);
err_table_erp_add:
 mlxsw_sp_acl_erp_index_put(erp_table, erp->index);
err_erp_index_get:
 mlxsw_sp_acl_erp_generic_destroy(erp);
err_erp_create:
 mlxsw_sp_acl_erp_region_master_mask_trans(erp_table);
 return ERR_PTR(err);
}
