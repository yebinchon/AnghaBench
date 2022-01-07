
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iavf_adapter {int aq_required; int current_op; } ;
typedef int caps ;


 int IAVF_FLAG_AQ_GET_CONFIG ;
 scalar_t__ PF_IS_V11 (struct iavf_adapter*) ;
 int VIRTCHNL_OP_GET_VF_RESOURCES ;
 int VIRTCHNL_VF_OFFLOAD_ADQ ;
 int VIRTCHNL_VF_OFFLOAD_ENCAP ;
 int VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM ;
 int VIRTCHNL_VF_OFFLOAD_L2 ;
 int VIRTCHNL_VF_OFFLOAD_REQ_QUEUES ;
 int VIRTCHNL_VF_OFFLOAD_RSS_AQ ;
 int VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 ;
 int VIRTCHNL_VF_OFFLOAD_RSS_PF ;
 int VIRTCHNL_VF_OFFLOAD_RSS_REG ;
 int VIRTCHNL_VF_OFFLOAD_VLAN ;
 int VIRTCHNL_VF_OFFLOAD_WB_ON_ITR ;
 int iavf_send_pf_msg (struct iavf_adapter*,int ,int *,int) ;

int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
{
 u32 caps;

 caps = VIRTCHNL_VF_OFFLOAD_L2 |
        VIRTCHNL_VF_OFFLOAD_RSS_PF |
        VIRTCHNL_VF_OFFLOAD_RSS_AQ |
        VIRTCHNL_VF_OFFLOAD_RSS_REG |
        VIRTCHNL_VF_OFFLOAD_VLAN |
        VIRTCHNL_VF_OFFLOAD_WB_ON_ITR |
        VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
        VIRTCHNL_VF_OFFLOAD_ENCAP |
        VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
        VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
        VIRTCHNL_VF_OFFLOAD_ADQ;

 adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
 adapter->aq_required &= ~IAVF_FLAG_AQ_GET_CONFIG;
 if (PF_IS_V11(adapter))
  return iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_VF_RESOURCES,
     (u8 *)&caps, sizeof(caps));
 else
  return iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_VF_RESOURCES,
     ((void*)0), 0);
}
