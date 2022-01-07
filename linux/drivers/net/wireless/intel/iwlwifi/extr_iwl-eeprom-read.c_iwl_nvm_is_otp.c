
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int hw_rev; } ;






 int CSR_HW_REV_TYPE_MSK ;

 int CSR_OTP_GP_REG ;
 int CSR_OTP_GP_REG_DEVICE_SELECT ;
 int EIO ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int iwl_read32 (struct iwl_trans*,int ) ;

__attribute__((used)) static int iwl_nvm_is_otp(struct iwl_trans *trans)
{
 u32 otpgp;


 switch (trans->hw_rev & CSR_HW_REV_TYPE_MSK) {
 case 128:
  IWL_ERR(trans, "Unknown hardware type\n");
  return -EIO;
 case 130:
 case 129:
 case 132:
 case 131:
  return 0;
 default:
  otpgp = iwl_read32(trans, CSR_OTP_GP_REG);
  if (otpgp & CSR_OTP_GP_REG_DEVICE_SELECT)
   return 1;
  return 0;
 }
}
