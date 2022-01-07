
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vqs ;
typedef int u8 ;
struct virtchnl_queue_select {int vsi_id; } ;
struct iavf_adapter {scalar_t__ current_op; TYPE_1__* vsi_res; } ;
struct TYPE_2__ {int vsi_id; } ;


 scalar_t__ VIRTCHNL_OP_GET_STATS ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 scalar_t__ iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int) ;

void iavf_request_stats(struct iavf_adapter *adapter)
{
 struct virtchnl_queue_select vqs;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  return;
 }
 adapter->current_op = VIRTCHNL_OP_GET_STATS;
 vqs.vsi_id = adapter->vsi_res->vsi_id;

 if (iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_STATS, (u8 *)&vqs,
        sizeof(vqs)))

  adapter->current_op = VIRTCHNL_OP_UNKNOWN;
}
