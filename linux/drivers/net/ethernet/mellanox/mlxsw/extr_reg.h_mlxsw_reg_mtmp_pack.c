
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_MTMP_THRESH_HI ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtmp_mte_set (char*,int) ;
 int mlxsw_reg_mtmp_mtr_set (char*,int) ;
 int mlxsw_reg_mtmp_sensor_index_set (char*,int ) ;
 int mlxsw_reg_mtmp_temperature_threshold_hi_set (char*,int ) ;
 int mtmp ;

__attribute__((used)) static inline void mlxsw_reg_mtmp_pack(char *payload, u16 sensor_index,
           bool max_temp_enable,
           bool max_temp_reset)
{
 MLXSW_REG_ZERO(mtmp, payload);
 mlxsw_reg_mtmp_sensor_index_set(payload, sensor_index);
 mlxsw_reg_mtmp_mte_set(payload, max_temp_enable);
 mlxsw_reg_mtmp_mtr_set(payload, max_temp_reset);
 mlxsw_reg_mtmp_temperature_threshold_hi_set(payload,
          MLXSW_REG_MTMP_THRESH_HI);
}
