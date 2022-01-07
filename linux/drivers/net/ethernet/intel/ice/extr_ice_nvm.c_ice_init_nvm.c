
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_nvm_info {int sr_words; int blank_nvm_mode; int ver; int eetrack; } ;
struct ice_hw {struct ice_nvm_info nvm; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int BIT (int) ;
 int GLNVM_FLA ;
 int GLNVM_FLA_LOCKED_M ;
 int GLNVM_GENS ;
 int GLNVM_GENS_SR_SIZE_M ;
 int GLNVM_GENS_SR_SIZE_S ;
 int ICE_DBG_INIT ;
 int ICE_DBG_NVM ;
 int ICE_ERR_NVM_BLANK_MODE ;
 int ICE_SR_NVM_DEV_STARTER_VER ;
 int ICE_SR_NVM_EETRACK_HI ;
 int ICE_SR_NVM_EETRACK_LO ;
 int ICE_SR_WORDS_IN_1KB ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int ice_read_sr_word (struct ice_hw*,int ,int*) ;
 int rd32 (struct ice_hw*,int ) ;

enum ice_status ice_init_nvm(struct ice_hw *hw)
{
 struct ice_nvm_info *nvm = &hw->nvm;
 u16 eetrack_lo, eetrack_hi;
 enum ice_status status = 0;
 u32 fla, gens_stat;
 u8 sr_size;




 gens_stat = rd32(hw, GLNVM_GENS);
 sr_size = (gens_stat & GLNVM_GENS_SR_SIZE_M) >> GLNVM_GENS_SR_SIZE_S;


 nvm->sr_words = BIT(sr_size) * ICE_SR_WORDS_IN_1KB;


 fla = rd32(hw, GLNVM_FLA);
 if (fla & GLNVM_FLA_LOCKED_M) {
  nvm->blank_nvm_mode = 0;
 } else {
  nvm->blank_nvm_mode = 1;
  status = ICE_ERR_NVM_BLANK_MODE;
  ice_debug(hw, ICE_DBG_NVM,
     "NVM init error: unsupported blank mode.\n");
  return status;
 }

 status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &hw->nvm.ver);
 if (status) {
  ice_debug(hw, ICE_DBG_INIT,
     "Failed to read DEV starter version.\n");
  return status;
 }

 status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
 if (status) {
  ice_debug(hw, ICE_DBG_INIT, "Failed to read EETRACK lo.\n");
  return status;
 }
 status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_HI, &eetrack_hi);
 if (status) {
  ice_debug(hw, ICE_DBG_INIT, "Failed to read EETRACK hi.\n");
  return status;
 }

 hw->nvm.eetrack = (eetrack_hi << 16) | eetrack_lo;

 return status;
}
