
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_RES_READ ;
 int ice_acquire_nvm (struct ice_hw*,int ) ;
 int ice_read_sr_word_aq (struct ice_hw*,int ,int *) ;
 int ice_release_nvm (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
{
 enum ice_status status;

 status = ice_acquire_nvm(hw, ICE_RES_READ);
 if (!status) {
  status = ice_read_sr_word_aq(hw, offset, data);
  ice_release_nvm(hw);
 }

 return status;
}
