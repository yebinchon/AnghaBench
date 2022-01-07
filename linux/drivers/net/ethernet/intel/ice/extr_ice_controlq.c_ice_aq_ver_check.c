
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {scalar_t__ api_maj_ver; scalar_t__ api_min_ver; } ;


 scalar_t__ EXP_FW_API_VER_MAJOR ;
 scalar_t__ EXP_FW_API_VER_MINOR ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static bool ice_aq_ver_check(struct ice_hw *hw)
{
 if (hw->api_maj_ver > EXP_FW_API_VER_MAJOR) {

  dev_warn(ice_hw_to_dev(hw),
    "The driver for the device stopped because the NVM image is newer than expected. You must install the most recent version of the network driver.\n");
  return 0;
 } else if (hw->api_maj_ver == EXP_FW_API_VER_MAJOR) {
  if (hw->api_min_ver > (EXP_FW_API_VER_MINOR + 2))
   dev_info(ice_hw_to_dev(hw),
     "The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\n");
  else if ((hw->api_min_ver + 2) < EXP_FW_API_VER_MINOR)
   dev_info(ice_hw_to_dev(hw),
     "The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
 } else {

  dev_info(ice_hw_to_dev(hw),
    "The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
 }
 return 1;
}
