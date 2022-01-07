
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int MLXSW_REG_MTMP_TEMP_TO_MC (int ) ;
 int mlxsw_reg_mtmp_max_temperature_get (char*) ;
 int mlxsw_reg_mtmp_sensor_name_memcpy_from (char*,char*) ;
 int mlxsw_reg_mtmp_temperature_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_mtmp_unpack(char *payload, int *p_temp,
      int *p_max_temp, char *sensor_name)
{
 s16 temp;

 if (p_temp) {
  temp = mlxsw_reg_mtmp_temperature_get(payload);
  *p_temp = MLXSW_REG_MTMP_TEMP_TO_MC(temp);
 }
 if (p_max_temp) {
  temp = mlxsw_reg_mtmp_max_temperature_get(payload);
  *p_max_temp = MLXSW_REG_MTMP_TEMP_TO_MC(temp);
 }
 if (sensor_name)
  mlxsw_reg_mtmp_sensor_name_memcpy_from(payload, sensor_name);
}
