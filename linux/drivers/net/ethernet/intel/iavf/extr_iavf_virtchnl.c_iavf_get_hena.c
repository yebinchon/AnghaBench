
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_adapter {scalar_t__ current_op; int aq_required; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int IAVF_FLAG_AQ_GET_HENA ;
 scalar_t__ VIRTCHNL_OP_GET_RSS_HENA_CAPS ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int ) ;

void iavf_get_hena(struct iavf_adapter *adapter)
{
 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot get RSS hash capabilities, command %d pending\n",
   adapter->current_op);
  return;
 }
 adapter->current_op = VIRTCHNL_OP_GET_RSS_HENA_CAPS;
 adapter->aq_required &= ~IAVF_FLAG_AQ_GET_HENA;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_RSS_HENA_CAPS, ((void*)0), 0);
}
