
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ sq_cmd_timeout; } ;
struct ice_hw {TYPE_1__ adminq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_aq_res_ids { ____Placeholder_ice_aq_res_ids } ice_aq_res_ids ;


 int ICE_ERR_AQ_TIMEOUT ;
 int ice_aq_release_res (struct ice_hw*,int,int ,int *) ;
 int mdelay (int) ;

void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
{
 enum ice_status status;
 u32 total_delay = 0;

 status = ice_aq_release_res(hw, res, 0, ((void*)0));




 while ((status == ICE_ERR_AQ_TIMEOUT) &&
        (total_delay < hw->adminq.sq_cmd_timeout)) {
  mdelay(1);
  status = ice_aq_release_res(hw, res, 0, ((void*)0));
  total_delay++;
 }
}
