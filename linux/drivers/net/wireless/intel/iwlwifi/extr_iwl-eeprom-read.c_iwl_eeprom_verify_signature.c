
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dev; } ;


 int CSR_EEPROM_GP ;




 int CSR_EEPROM_GP_VALID_MSK ;
 int ENOENT ;
 int IWL_DEBUG_EEPROM (int ,char*,int) ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 int iwl_read32 (struct iwl_trans*,int ) ;

__attribute__((used)) static int iwl_eeprom_verify_signature(struct iwl_trans *trans, bool nvm_is_otp)
{
 u32 gp = iwl_read32(trans, CSR_EEPROM_GP) & CSR_EEPROM_GP_VALID_MSK;

 IWL_DEBUG_EEPROM(trans->dev, "EEPROM signature=0x%08x\n", gp);

 switch (gp) {
 case 130:
  if (!nvm_is_otp) {
   IWL_ERR(trans, "EEPROM with bad signature: 0x%08x\n",
    gp);
   return -ENOENT;
  }
  return 0;
 case 129:
 case 128:
  if (nvm_is_otp) {
   IWL_ERR(trans, "OTP with bad signature: 0x%08x\n", gp);
   return -ENOENT;
  }
  return 0;
 case 131:
 default:
  IWL_ERR(trans,
   "bad EEPROM/OTP signature, type=%s, EEPROM_GP=0x%08x\n",
   nvm_is_otp ? "OTP" : "EEPROM", gp);
  return -ENOENT;
 }
}
