
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa {int set_ht; int fwd_entry_ht; } ;


 int kfree (struct mlxsw_afa*) ;
 int rhashtable_destroy (int *) ;

void mlxsw_afa_destroy(struct mlxsw_afa *mlxsw_afa)
{
 rhashtable_destroy(&mlxsw_afa->fwd_entry_ht);
 rhashtable_destroy(&mlxsw_afa->set_ht);
 kfree(mlxsw_afa);
}
