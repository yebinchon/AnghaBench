
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_mr_tcam_erif_list {int dummy; } ;
struct mlxsw_sp_mr_route_info {int erif_num; int * erif_indices; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_mr_erif_list_add (struct mlxsw_sp*,struct mlxsw_sp_mr_tcam_erif_list*,int ) ;

__attribute__((used)) static int
mlxsw_sp_mr_tcam_erif_populate(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_mr_tcam_erif_list *erif_list,
          struct mlxsw_sp_mr_route_info *route_info)
{
 int err;
 int i;

 for (i = 0; i < route_info->erif_num; i++) {
  u16 erif_index = route_info->erif_indices[i];

  err = mlxsw_sp_mr_erif_list_add(mlxsw_sp, erif_list,
      erif_index);
  if (err)
   return err;
 }
 return 0;
}
