
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int mlxsw_reg_mcc_control_state_get (char*) ;
 int mlxsw_reg_mcc_error_code_get (char*) ;
 int mlxsw_reg_mcc_update_handle_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_mcc_unpack(char *payload, u32 *p_update_handle,
     u8 *p_error_code, u8 *p_control_state)
{
 if (p_update_handle)
  *p_update_handle = mlxsw_reg_mcc_update_handle_get(payload);
 if (p_error_code)
  *p_error_code = mlxsw_reg_mcc_error_code_get(payload);
 if (p_control_state)
  *p_control_state = mlxsw_reg_mcc_control_state_get(payload);
}
