
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct ice_hw {int port_info; } ;
struct ice_aqc_get_sw_cfg_resp_elem {int vsi_port_num; int pf_vf_num; int swid; } ;
struct ice_aqc_get_sw_cfg_resp {struct ice_aqc_get_sw_cfg_resp_elem* elements; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_AQC_GET_SW_CONF_RESP_FUNC_NUM_M ;
 int ICE_AQC_GET_SW_CONF_RESP_IS_VF ;
 int ICE_AQC_GET_SW_CONF_RESP_TYPE_S ;
 int ICE_AQC_GET_SW_CONF_RESP_VSI ;
 int ICE_AQC_GET_SW_CONF_RESP_VSI_PORT_NUM_M ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_SW_CFG_MAX_BUF_LEN ;
 int devm_kfree (int ,void*) ;
 struct ice_aqc_get_sw_cfg_resp* devm_kzalloc (int ,int ,int ) ;
 int ice_aq_get_sw_cfg (struct ice_hw*,struct ice_aqc_get_sw_cfg_resp*,int ,size_t*,size_t*,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_init_port_info (int ,size_t,int,size_t,size_t,int) ;
 int le16_to_cpu (int ) ;

enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw)
{
 struct ice_aqc_get_sw_cfg_resp *rbuf;
 enum ice_status status;
 u16 req_desc = 0;
 u16 num_elems;
 u16 i;

 rbuf = devm_kzalloc(ice_hw_to_dev(hw), ICE_SW_CFG_MAX_BUF_LEN,
       GFP_KERNEL);

 if (!rbuf)
  return ICE_ERR_NO_MEMORY;






 do {
  status = ice_aq_get_sw_cfg(hw, rbuf, ICE_SW_CFG_MAX_BUF_LEN,
        &req_desc, &num_elems, ((void*)0));

  if (status)
   break;

  for (i = 0; i < num_elems; i++) {
   struct ice_aqc_get_sw_cfg_resp_elem *ele;
   u16 pf_vf_num, swid, vsi_port_num;
   bool is_vf = 0;
   u8 type;

   ele = rbuf[i].elements;
   vsi_port_num = le16_to_cpu(ele->vsi_port_num) &
    ICE_AQC_GET_SW_CONF_RESP_VSI_PORT_NUM_M;

   pf_vf_num = le16_to_cpu(ele->pf_vf_num) &
    ICE_AQC_GET_SW_CONF_RESP_FUNC_NUM_M;

   swid = le16_to_cpu(ele->swid);

   if (le16_to_cpu(ele->pf_vf_num) &
       ICE_AQC_GET_SW_CONF_RESP_IS_VF)
    is_vf = 1;

   type = le16_to_cpu(ele->vsi_port_num) >>
    ICE_AQC_GET_SW_CONF_RESP_TYPE_S;

   if (type == ICE_AQC_GET_SW_CONF_RESP_VSI) {

    continue;
   }

   ice_init_port_info(hw->port_info, vsi_port_num,
        type, swid, pf_vf_num, is_vf);
  }
 } while (req_desc && !status);

 devm_kfree(ice_hw_to_dev(hw), (void *)rbuf);
 return status;
}
