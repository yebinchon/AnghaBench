
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_mfcr_pwm_frequency { ____Placeholder_mlxsw_reg_mfcr_pwm_frequency } mlxsw_reg_mfcr_pwm_frequency ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mfcr ;
 int mlxsw_reg_mfcr_pwm_frequency_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_reg_mfcr_pack(char *payload,
      enum mlxsw_reg_mfcr_pwm_frequency pwm_frequency)
{
 MLXSW_REG_ZERO(mfcr, payload);
 mlxsw_reg_mfcr_pwm_frequency_set(payload, pwm_frequency);
}
