
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_ptp_shaper_params {int egr_timestamp_inc; int ing_timestamp_inc; int port_to_shaper_credits; int shaper_bs; int shaper_inc; int shaper_time_mantissa; int shaper_time_exp; int port_speed; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QPSC_LEN ;
 int MLXSW_SP1_PTP_SHAPER_PARAMS_LEN ;
 int mlxsw_reg_qpsc_pack (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp1_ptp_shaper_params* mlxsw_sp1_ptp_shaper_params ;
 int qpsc ;

__attribute__((used)) static int mlxsw_sp1_ptp_shaper_params_set(struct mlxsw_sp *mlxsw_sp)
{
 const struct mlxsw_sp1_ptp_shaper_params *params;
 char qpsc_pl[MLXSW_REG_QPSC_LEN];
 int i, err;

 for (i = 0; i < MLXSW_SP1_PTP_SHAPER_PARAMS_LEN; i++) {
  params = &mlxsw_sp1_ptp_shaper_params[i];
  mlxsw_reg_qpsc_pack(qpsc_pl, params->port_speed,
        params->shaper_time_exp,
        params->shaper_time_mantissa,
        params->shaper_inc, params->shaper_bs,
        params->port_to_shaper_credits,
        params->ing_timestamp_inc,
        params->egr_timestamp_inc);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qpsc), qpsc_pl);
  if (err)
   return err;
 }

 return 0;
}
