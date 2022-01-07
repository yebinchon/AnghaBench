
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;




 int mlxsw_reg_rauhtd_rec_type_get (char*,int) ;
 int mlxsw_sp_router_neigh_rec_ipv4_process (struct mlxsw_sp*,char*,int) ;
 int mlxsw_sp_router_neigh_rec_ipv6_process (struct mlxsw_sp*,char*,int) ;

__attribute__((used)) static void mlxsw_sp_router_neigh_rec_process(struct mlxsw_sp *mlxsw_sp,
           char *rauhtd_pl, int rec_index)
{
 switch (mlxsw_reg_rauhtd_rec_type_get(rauhtd_pl, rec_index)) {
 case 129:
  mlxsw_sp_router_neigh_rec_ipv4_process(mlxsw_sp, rauhtd_pl,
             rec_index);
  break;
 case 128:
  mlxsw_sp_router_neigh_rec_ipv6_process(mlxsw_sp, rauhtd_pl,
             rec_index);
  break;
 }
}
