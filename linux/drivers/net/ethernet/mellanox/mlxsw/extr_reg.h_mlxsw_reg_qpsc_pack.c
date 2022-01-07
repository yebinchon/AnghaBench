
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_qpsc_port_speed { ____Placeholder_mlxsw_reg_qpsc_port_speed } mlxsw_reg_qpsc_port_speed ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qpsc_egr_timestamp_inc_set (char*,int) ;
 int mlxsw_reg_qpsc_ing_timestamp_inc_set (char*,int) ;
 int mlxsw_reg_qpsc_port_speed_set (char*,int) ;
 int mlxsw_reg_qpsc_port_to_shaper_credits_set (char*,int ) ;
 int mlxsw_reg_qpsc_ptsc_we_set (char*,int) ;
 int mlxsw_reg_qpsc_shaper_bs_set (char*,int ) ;
 int mlxsw_reg_qpsc_shaper_inc_set (char*,int ) ;
 int mlxsw_reg_qpsc_shaper_time_exp_set (char*,int ) ;
 int mlxsw_reg_qpsc_shaper_time_mantissa_set (char*,int ) ;
 int qpsc ;

__attribute__((used)) static inline void
mlxsw_reg_qpsc_pack(char *payload, enum mlxsw_reg_qpsc_port_speed port_speed,
      u8 shaper_time_exp, u8 shaper_time_mantissa, u8 shaper_inc,
      u8 shaper_bs, u8 port_to_shaper_credits,
      int ing_timestamp_inc, int egr_timestamp_inc)
{
 MLXSW_REG_ZERO(qpsc, payload);
 mlxsw_reg_qpsc_port_speed_set(payload, port_speed);
 mlxsw_reg_qpsc_shaper_time_exp_set(payload, shaper_time_exp);
 mlxsw_reg_qpsc_shaper_time_mantissa_set(payload, shaper_time_mantissa);
 mlxsw_reg_qpsc_shaper_inc_set(payload, shaper_inc);
 mlxsw_reg_qpsc_shaper_bs_set(payload, shaper_bs);
 mlxsw_reg_qpsc_ptsc_we_set(payload, 1);
 mlxsw_reg_qpsc_port_to_shaper_credits_set(payload, port_to_shaper_credits);
 mlxsw_reg_qpsc_ing_timestamp_inc_set(payload, ing_timestamp_inc);
 mlxsw_reg_qpsc_egr_timestamp_inc_set(payload, egr_timestamp_inc);
}
