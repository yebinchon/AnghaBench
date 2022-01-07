
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aqc_opc_list_dev_caps ;
 int ice_aqc_opc_list_func_caps ;
 int ice_discover_caps (struct ice_hw*,int ) ;

enum ice_status ice_get_caps(struct ice_hw *hw)
{
 enum ice_status status;

 status = ice_discover_caps(hw, ice_aqc_opc_list_dev_caps);
 if (!status)
  status = ice_discover_caps(hw, ice_aqc_opc_list_func_caps);

 return status;
}
