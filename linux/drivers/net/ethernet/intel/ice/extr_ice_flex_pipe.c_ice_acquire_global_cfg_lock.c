
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_aq_res_access_type { ____Placeholder_ice_aq_res_access_type } ice_aq_res_access_type ;


 int ICE_DBG_PKG ;
 int ICE_ERR_AQ_NO_WORK ;
 int ICE_GLOBAL_CFG_LOCK_RES_ID ;
 int ICE_GLOBAL_CFG_LOCK_TIMEOUT ;
 int ice_acquire_res (struct ice_hw*,int ,int,int ) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int ice_global_cfg_lock_sw ;
 int mutex_lock (int *) ;

__attribute__((used)) static enum ice_status
ice_acquire_global_cfg_lock(struct ice_hw *hw,
       enum ice_aq_res_access_type access)
{
 enum ice_status status;

 status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, access,
     ICE_GLOBAL_CFG_LOCK_TIMEOUT);

 if (!status)
  mutex_lock(&ice_global_cfg_lock_sw);
 else if (status == ICE_ERR_AQ_NO_WORK)
  ice_debug(hw, ICE_DBG_PKG,
     "Global config lock: No work to do\n");

 return status;
}
