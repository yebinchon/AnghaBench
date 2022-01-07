
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_bf {unsigned int bank_size; int lock; } ;
struct mlxsw_sp {int core; } ;


 int ACL_MAX_BF_LOG ;
 int EIO ;
 int ENOMEM ;
 struct mlxsw_sp_acl_bf* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 struct mlxsw_sp_acl_bf* kzalloc (int ,int ) ;
 int mutex_init (int *) ;
 int refcnt ;
 int struct_size (struct mlxsw_sp_acl_bf*,int ,unsigned int) ;

struct mlxsw_sp_acl_bf *
mlxsw_sp_acl_bf_init(struct mlxsw_sp *mlxsw_sp, unsigned int num_erp_banks)
{
 struct mlxsw_sp_acl_bf *bf;
 unsigned int bf_bank_size;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, ACL_MAX_BF_LOG))
  return ERR_PTR(-EIO);




 bf_bank_size = 1 << MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_BF_LOG);
 bf = kzalloc(struct_size(bf, refcnt, bf_bank_size * num_erp_banks),
       GFP_KERNEL);
 if (!bf)
  return ERR_PTR(-ENOMEM);

 bf->bank_size = bf_bank_size;
 mutex_init(&bf->lock);

 return bf;
}
