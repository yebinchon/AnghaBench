
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ sr_words; } ;
struct ice_hw {TYPE_1__ nvm; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_DBG_NVM ;
 int ICE_ERR_PARAM ;
 scalar_t__ ICE_SR_SECTOR_SIZE_IN_WORDS ;
 int ice_debug (struct ice_hw*,int ,char*,...) ;

__attribute__((used)) static enum ice_status
ice_check_sr_access_params(struct ice_hw *hw, u32 offset, u16 words)
{
 if ((offset + words) > hw->nvm.sr_words) {
  ice_debug(hw, ICE_DBG_NVM,
     "NVM error: offset beyond SR lmt.\n");
  return ICE_ERR_PARAM;
 }

 if (words > ICE_SR_SECTOR_SIZE_IN_WORDS) {

  ice_debug(hw, ICE_DBG_NVM,
     "NVM error: tried to access %d words, limit is %d.\n",
     words, ICE_SR_SECTOR_SIZE_IN_WORDS);
  return ICE_ERR_PARAM;
 }

 if (((offset + (words - 1)) / ICE_SR_SECTOR_SIZE_IN_WORDS) !=
     (offset / ICE_SR_SECTOR_SIZE_IN_WORDS)) {

  ice_debug(hw, ICE_DBG_NVM,
     "NVM error: cannot spread over two sectors.\n");
  return ICE_ERR_PARAM;
 }

 return 0;
}
