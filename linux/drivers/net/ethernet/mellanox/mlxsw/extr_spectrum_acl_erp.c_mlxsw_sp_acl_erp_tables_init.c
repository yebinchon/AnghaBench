
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_core {int erp_tables; int bf; void* num_erp_banks; } ;
struct mlxsw_sp {int core; } ;


 int ACL_MAX_ERPT_BANKS ;
 int ACL_MAX_ERPT_BANK_SIZE ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 void* MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 int MLXSW_SP_ACL_ERP_GENALLOC_OFFSET ;
 int PTR_ERR (int ) ;
 int gen_pool_add (int ,int ,unsigned int,int) ;
 int gen_pool_best_fit ;
 int gen_pool_create (int ,int) ;
 int gen_pool_destroy (int ) ;
 int gen_pool_set_algo (int ,int ,int *) ;
 int mlxsw_sp_acl_bf_fini (int ) ;
 int mlxsw_sp_acl_bf_init (struct mlxsw_sp*,void*) ;
 int mlxsw_sp_acl_erp_tables_sizes_query (struct mlxsw_sp*,struct mlxsw_sp_acl_erp_core*) ;

__attribute__((used)) static int mlxsw_sp_acl_erp_tables_init(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_erp_core *erp_core)
{
 unsigned int erpt_bank_size;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, ACL_MAX_ERPT_BANK_SIZE) ||
     !MLXSW_CORE_RES_VALID(mlxsw_sp->core, ACL_MAX_ERPT_BANKS))
  return -EIO;
 erpt_bank_size = MLXSW_CORE_RES_GET(mlxsw_sp->core,
         ACL_MAX_ERPT_BANK_SIZE);
 erp_core->num_erp_banks = MLXSW_CORE_RES_GET(mlxsw_sp->core,
           ACL_MAX_ERPT_BANKS);

 erp_core->erp_tables = gen_pool_create(0, -1);
 if (!erp_core->erp_tables)
  return -ENOMEM;
 gen_pool_set_algo(erp_core->erp_tables, gen_pool_best_fit, ((void*)0));

 err = gen_pool_add(erp_core->erp_tables,
      MLXSW_SP_ACL_ERP_GENALLOC_OFFSET, erpt_bank_size,
      -1);
 if (err)
  goto err_gen_pool_add;

 erp_core->bf = mlxsw_sp_acl_bf_init(mlxsw_sp, erp_core->num_erp_banks);
 if (IS_ERR(erp_core->bf)) {
  err = PTR_ERR(erp_core->bf);
  goto err_bf_init;
 }


 err = mlxsw_sp_acl_erp_tables_sizes_query(mlxsw_sp, erp_core);
 if (err)
  goto err_erp_tables_sizes_query;

 return 0;

err_erp_tables_sizes_query:
 mlxsw_sp_acl_bf_fini(erp_core->bf);
err_bf_init:
err_gen_pool_add:
 gen_pool_destroy(erp_core->erp_tables);
 return err;
}
