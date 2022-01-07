
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_mfcr_pwm_frequency { ____Placeholder_mlxsw_reg_mfcr_pwm_frequency } mlxsw_reg_mfcr_pwm_frequency ;


 int mlxsw_reg_mfcr_pwm_active_get (char*) ;
 int mlxsw_reg_mfcr_pwm_frequency_get (char*) ;
 int mlxsw_reg_mfcr_tacho_active_get (char*) ;

__attribute__((used)) static inline void
mlxsw_reg_mfcr_unpack(char *payload,
        enum mlxsw_reg_mfcr_pwm_frequency *p_pwm_frequency,
        u16 *p_tacho_active, u8 *p_pwm_active)
{
 *p_pwm_frequency = mlxsw_reg_mfcr_pwm_frequency_get(payload);
 *p_tacho_active = mlxsw_reg_mfcr_tacho_active_get(payload);
 *p_pwm_active = mlxsw_reg_mfcr_pwm_active_get(payload);
}
