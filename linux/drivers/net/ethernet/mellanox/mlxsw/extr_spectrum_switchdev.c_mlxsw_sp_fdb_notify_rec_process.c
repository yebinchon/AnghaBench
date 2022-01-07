
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
 int mlxsw_reg_sfn_rec_type_get (char*,int) ;
 int mlxsw_sp_fdb_notify_mac_lag_process (struct mlxsw_sp*,char*,int,int) ;
 int mlxsw_sp_fdb_notify_mac_process (struct mlxsw_sp*,char*,int,int) ;
 int mlxsw_sp_fdb_notify_mac_uc_tunnel_process (struct mlxsw_sp*,char*,int,int) ;

__attribute__((used)) static void mlxsw_sp_fdb_notify_rec_process(struct mlxsw_sp *mlxsw_sp,
         char *sfn_pl, int rec_index)
{
 switch (mlxsw_reg_sfn_rec_type_get(sfn_pl, rec_index)) {
 case 130:
  mlxsw_sp_fdb_notify_mac_process(mlxsw_sp, sfn_pl,
      rec_index, 1);
  break;
 case 133:
  mlxsw_sp_fdb_notify_mac_process(mlxsw_sp, sfn_pl,
      rec_index, 0);
  break;
 case 129:
  mlxsw_sp_fdb_notify_mac_lag_process(mlxsw_sp, sfn_pl,
          rec_index, 1);
  break;
 case 132:
  mlxsw_sp_fdb_notify_mac_lag_process(mlxsw_sp, sfn_pl,
          rec_index, 0);
  break;
 case 128:
  mlxsw_sp_fdb_notify_mac_uc_tunnel_process(mlxsw_sp, sfn_pl,
         rec_index, 1);
  break;
 case 131:
  mlxsw_sp_fdb_notify_mac_uc_tunnel_process(mlxsw_sp, sfn_pl,
         rec_index, 0);
  break;
 }
}
