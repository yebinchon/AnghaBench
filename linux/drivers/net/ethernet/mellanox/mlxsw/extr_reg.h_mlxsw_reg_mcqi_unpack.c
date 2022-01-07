
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int mlxsw_reg_mcqi_cap_log_mcda_word_size_get (char*) ;
 int mlxsw_reg_mcqi_cap_max_component_size_get (char*) ;
 int mlxsw_reg_mcqi_cap_mcda_max_write_size_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_mcqi_unpack(char *payload,
      u32 *p_cap_max_component_size,
      u8 *p_cap_log_mcda_word_size,
      u16 *p_cap_mcda_max_write_size)
{
 *p_cap_max_component_size =
  mlxsw_reg_mcqi_cap_max_component_size_get(payload);
 *p_cap_log_mcda_word_size =
  mlxsw_reg_mcqi_cap_log_mcda_word_size_get(payload);
 *p_cap_mcda_max_write_size =
  mlxsw_reg_mcqi_cap_mcda_max_write_size_get(payload);
}
