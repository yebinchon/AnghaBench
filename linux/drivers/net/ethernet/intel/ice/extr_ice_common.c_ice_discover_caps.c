
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ sq_last_status; } ;
struct ice_hw {TYPE_1__ adminq; } ;
struct ice_aqc_list_caps_elem {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_adminq_opc { ____Placeholder_ice_adminq_opc } ice_adminq_opc ;


 int GFP_KERNEL ;
 scalar_t__ ICE_AQ_RC_ENOMEM ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_GET_CAP_BUF_COUNT ;
 scalar_t__ ICE_GET_CAP_RETRY_COUNT ;
 int devm_kfree (int ,void*) ;
 void* devm_kzalloc (int ,int ,int ) ;
 int ice_aq_discover_caps (struct ice_hw*,void*,int ,int*,int,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_discover_caps(struct ice_hw *hw, enum ice_adminq_opc opc)
{
 enum ice_status status;
 u32 cap_count;
 u16 cbuf_len;
 u8 retries;
 cap_count = 40;
 retries = 2;

 do {
  void *cbuf;

  cbuf_len = (u16)(cap_count *
     sizeof(struct ice_aqc_list_caps_elem));
  cbuf = devm_kzalloc(ice_hw_to_dev(hw), cbuf_len, GFP_KERNEL);
  if (!cbuf)
   return ICE_ERR_NO_MEMORY;

  status = ice_aq_discover_caps(hw, cbuf, cbuf_len, &cap_count,
           opc, ((void*)0));
  devm_kfree(ice_hw_to_dev(hw), cbuf);

  if (!status || hw->adminq.sq_last_status != ICE_AQ_RC_ENOMEM)
   break;


 } while (--retries);

 return status;
}
