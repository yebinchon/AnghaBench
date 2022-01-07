
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_read_nvm (struct ice_hw*,int ,int,int,int*,int,int *) ;
 int ice_check_sr_access_params (struct ice_hw*,int,int) ;

__attribute__((used)) static enum ice_status
ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, u16 *data,
        bool last_command)
{
 enum ice_status status;

 status = ice_check_sr_access_params(hw, offset, words);





 if (!status)
  status = ice_aq_read_nvm(hw, 0, 2 * offset, 2 * words, data,
      last_command, ((void*)0));

 return status;
}
