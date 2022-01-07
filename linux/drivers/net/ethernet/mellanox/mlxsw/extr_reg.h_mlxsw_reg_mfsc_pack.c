
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mfsc ;
 int mlxsw_reg_mfsc_pwm_duty_cycle_set (char*,int ) ;
 int mlxsw_reg_mfsc_pwm_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mfsc_pack(char *payload, u8 pwm,
           u8 pwm_duty_cycle)
{
 MLXSW_REG_ZERO(mfsc, payload);
 mlxsw_reg_mfsc_pwm_set(payload, pwm);
 mlxsw_reg_mfsc_pwm_duty_cycle_set(payload, pwm_duty_cycle);
}
