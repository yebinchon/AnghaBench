
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_OTP_GP_REG ;
 int CSR_OTP_GP_REG_OTP_ACCESS_MODE ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_read32 (struct iwl_trans*,int ) ;

__attribute__((used)) static void iwl_set_otp_access_absolute(struct iwl_trans *trans)
{
 iwl_read32(trans, CSR_OTP_GP_REG);

 iwl_clear_bit(trans, CSR_OTP_GP_REG,
        CSR_OTP_GP_REG_OTP_ACCESS_MODE);
}
