
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_list_key {int dummy; } ;
struct mlxsw_sp_nve_mc_list {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_nve_mc_list* mlxsw_sp_nve_mc_list_create (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list_key const*) ;
 struct mlxsw_sp_nve_mc_list* mlxsw_sp_nve_mc_list_find (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list_key const*) ;

__attribute__((used)) static struct mlxsw_sp_nve_mc_list *
mlxsw_sp_nve_mc_list_get(struct mlxsw_sp *mlxsw_sp,
    const struct mlxsw_sp_nve_mc_list_key *key)
{
 struct mlxsw_sp_nve_mc_list *mc_list;

 mc_list = mlxsw_sp_nve_mc_list_find(mlxsw_sp, key);
 if (mc_list)
  return mc_list;

 return mlxsw_sp_nve_mc_list_create(mlxsw_sp, key);
}
