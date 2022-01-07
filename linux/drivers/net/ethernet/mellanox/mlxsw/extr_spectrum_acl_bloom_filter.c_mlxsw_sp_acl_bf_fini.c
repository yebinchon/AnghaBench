
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_bf {int lock; } ;


 int kfree (struct mlxsw_sp_acl_bf*) ;
 int mutex_destroy (int *) ;

void mlxsw_sp_acl_bf_fini(struct mlxsw_sp_acl_bf *bf)
{
 mutex_destroy(&bf->lock);
 kfree(bf);
}
