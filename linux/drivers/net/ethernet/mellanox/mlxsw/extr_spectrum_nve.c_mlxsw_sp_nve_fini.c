
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* nve; } ;
struct TYPE_2__ {int mc_list_ht; int num_nve_tunnels; } ;


 int WARN_ON (int ) ;
 int kfree (TYPE_1__*) ;
 int rhashtable_destroy (int *) ;

void mlxsw_sp_nve_fini(struct mlxsw_sp *mlxsw_sp)
{
 WARN_ON(mlxsw_sp->nve->num_nve_tunnels);
 rhashtable_destroy(&mlxsw_sp->nve->mc_list_ht);
 kfree(mlxsw_sp->nve);
 mlxsw_sp->nve = ((void*)0);
}
