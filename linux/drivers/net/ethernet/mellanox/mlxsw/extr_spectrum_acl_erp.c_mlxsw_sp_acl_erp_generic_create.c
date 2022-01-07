
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int num_atcam_erps; int atcam_erps_list; } ;
struct mlxsw_sp_acl_erp_key {int dummy; } ;
struct mlxsw_sp_acl_erp {int id; int list; int key; struct mlxsw_sp_acl_erp_table* erp_table; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_erp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_sp_acl_erp*) ;
 struct mlxsw_sp_acl_erp* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int *,struct mlxsw_sp_acl_erp_key*,int) ;
 int mlxsw_sp_acl_erp_id_get (struct mlxsw_sp_acl_erp_table*,int *) ;
 int mlxsw_sp_acl_erp_id_put (struct mlxsw_sp_acl_erp_table*,int ) ;
 int mlxsw_sp_acl_erp_master_mask_set (struct mlxsw_sp_acl_erp_table*,int *) ;

__attribute__((used)) static struct mlxsw_sp_acl_erp *
mlxsw_sp_acl_erp_generic_create(struct mlxsw_sp_acl_erp_table *erp_table,
    struct mlxsw_sp_acl_erp_key *key)
{
 struct mlxsw_sp_acl_erp *erp;
 int err;

 erp = kzalloc(sizeof(*erp), GFP_KERNEL);
 if (!erp)
  return ERR_PTR(-ENOMEM);

 err = mlxsw_sp_acl_erp_id_get(erp_table, &erp->id);
 if (err)
  goto err_erp_id_get;

 memcpy(&erp->key, key, sizeof(*key));
 list_add(&erp->list, &erp_table->atcam_erps_list);
 erp_table->num_atcam_erps++;
 erp->erp_table = erp_table;

 err = mlxsw_sp_acl_erp_master_mask_set(erp_table, &erp->key);
 if (err)
  goto err_master_mask_set;

 return erp;

err_master_mask_set:
 erp_table->num_atcam_erps--;
 list_del(&erp->list);
 mlxsw_sp_acl_erp_id_put(erp_table, erp->id);
err_erp_id_get:
 kfree(erp);
 return ERR_PTR(err);
}
