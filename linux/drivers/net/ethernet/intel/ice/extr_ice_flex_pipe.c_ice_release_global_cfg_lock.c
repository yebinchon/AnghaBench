
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int ICE_GLOBAL_CFG_LOCK_RES_ID ;
 int ice_global_cfg_lock_sw ;
 int ice_release_res (struct ice_hw*,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ice_release_global_cfg_lock(struct ice_hw *hw)
{
 mutex_unlock(&ice_global_cfg_lock_sw);
 ice_release_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID);
}
