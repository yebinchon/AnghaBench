
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_list_key {int dummy; } ;
struct mlxsw_sp_nve_mc_list {int dummy; } ;
struct mlxsw_sp_nve {int mc_list_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;


 int mlxsw_sp_nve_mc_list_ht_params ;
 struct mlxsw_sp_nve_mc_list* rhashtable_lookup_fast (int *,struct mlxsw_sp_nve_mc_list_key const*,int ) ;

__attribute__((used)) static struct mlxsw_sp_nve_mc_list *
mlxsw_sp_nve_mc_list_find(struct mlxsw_sp *mlxsw_sp,
     const struct mlxsw_sp_nve_mc_list_key *key)
{
 struct mlxsw_sp_nve *nve = mlxsw_sp->nve;

 return rhashtable_lookup_fast(&nve->mc_list_ht, key,
          mlxsw_sp_nve_mc_list_ht_params);
}
