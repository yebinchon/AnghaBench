
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_hw {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int VIRTCHNL_OP_RESET_VF ;
 int iavf_aq_send_msg_to_pf (struct iavf_hw*,int ,int ,int *,int ,int *) ;

enum iavf_status iavf_vf_reset(struct iavf_hw *hw)
{
 return iavf_aq_send_msg_to_pf(hw, VIRTCHNL_OP_RESET_VF,
          0, ((void*)0), 0, ((void*)0));
}
