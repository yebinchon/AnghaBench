
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct mlxsw_sp_nve_mc_list_key {int fid_index; int member_0; } ;
struct mlxsw_sp_nve_mc_list {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;


 scalar_t__ IS_ERR (struct mlxsw_sp_nve_mc_list*) ;
 int PTR_ERR (struct mlxsw_sp_nve_mc_list*) ;
 int mlxsw_sp_fid_index (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_nve_fid_flood_index_set (struct mlxsw_sp_fid*,struct mlxsw_sp_nve_mc_list*) ;
 struct mlxsw_sp_nve_mc_list* mlxsw_sp_nve_mc_list_get (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list_key*) ;
 int mlxsw_sp_nve_mc_list_ip_add (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*,int,union mlxsw_sp_l3addr*) ;
 int mlxsw_sp_nve_mc_list_ip_del (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*,int,union mlxsw_sp_l3addr*) ;
 int mlxsw_sp_nve_mc_list_put (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*) ;

int mlxsw_sp_nve_flood_ip_add(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_fid *fid,
         enum mlxsw_sp_l3proto proto,
         union mlxsw_sp_l3addr *addr)
{
 struct mlxsw_sp_nve_mc_list_key key = { 0 };
 struct mlxsw_sp_nve_mc_list *mc_list;
 int err;

 key.fid_index = mlxsw_sp_fid_index(fid);
 mc_list = mlxsw_sp_nve_mc_list_get(mlxsw_sp, &key);
 if (IS_ERR(mc_list))
  return PTR_ERR(mc_list);

 err = mlxsw_sp_nve_mc_list_ip_add(mlxsw_sp, mc_list, proto, addr);
 if (err)
  goto err_add_ip;

 err = mlxsw_sp_nve_fid_flood_index_set(fid, mc_list);
 if (err)
  goto err_fid_flood_index_set;

 return 0;

err_fid_flood_index_set:
 mlxsw_sp_nve_mc_list_ip_del(mlxsw_sp, mc_list, proto, addr);
err_add_ip:
 mlxsw_sp_nve_mc_list_put(mlxsw_sp, mc_list);
 return err;
}
