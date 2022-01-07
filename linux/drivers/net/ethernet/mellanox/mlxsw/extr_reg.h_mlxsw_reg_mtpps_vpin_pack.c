
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MLXSW_REG_MTPPS_PIN_MODE_VIRTUAL_PIN ;
 int MLXSW_REG_MTPPS_PIN_SP_VIRTUAL_PIN ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtpps_enable_set (char*,int) ;
 int mlxsw_reg_mtpps_pin_mode_set (char*,int ) ;
 int mlxsw_reg_mtpps_pin_set (char*,int ) ;
 int mlxsw_reg_mtpps_time_stamp_set (char*,int ) ;
 int mtpps ;

__attribute__((used)) static inline void
mlxsw_reg_mtpps_vpin_pack(char *payload, u64 time_stamp)
{
 MLXSW_REG_ZERO(mtpps, payload);
 mlxsw_reg_mtpps_pin_set(payload, MLXSW_REG_MTPPS_PIN_SP_VIRTUAL_PIN);
 mlxsw_reg_mtpps_pin_mode_set(payload,
         MLXSW_REG_MTPPS_PIN_MODE_VIRTUAL_PIN);
 mlxsw_reg_mtpps_enable_set(payload, 1);
 mlxsw_reg_mtpps_time_stamp_set(payload, time_stamp);
}
