
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int current_op; } ;


 int VIRTCHNL_OP_RESET_VF ;
 int VIRTCHNL_OP_UNKNOWN ;
 int iavf_send_pf_msg (struct iavf_adapter*,int ,int *,int ) ;

void iavf_request_reset(struct iavf_adapter *adapter)
{

 iavf_send_pf_msg(adapter, VIRTCHNL_OP_RESET_VF, ((void*)0), 0);
 adapter->current_op = VIRTCHNL_OP_UNKNOWN;
}
