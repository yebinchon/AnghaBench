
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mlxsw_reg_sbpm_buff_occupancy_get (char*) ;
 int mlxsw_reg_sbpm_max_buff_occupancy_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_sbpm_unpack(char *payload, u32 *p_buff_occupancy,
      u32 *p_max_buff_occupancy)
{
 *p_buff_occupancy = mlxsw_reg_sbpm_buff_occupancy_get(payload);
 *p_max_buff_occupancy = mlxsw_reg_sbpm_max_buff_occupancy_get(payload);
}
