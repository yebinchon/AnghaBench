
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct iavf_adapter {scalar_t__ current_op; int aq_required; int flags; TYPE_2__ ch_config; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int IAVF_FLAG_AQ_DISABLE_CHANNELS ;
 int IAVF_FLAG_REINIT_ITR_NEEDED ;
 scalar_t__ VIRTCHNL_OP_DISABLE_CHANNELS ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int __IAVF_TC_INVALID ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int ) ;

void iavf_disable_channels(struct iavf_adapter *adapter)
{
 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot configure mqprio, command %d pending\n",
   adapter->current_op);
  return;
 }

 adapter->ch_config.state = __IAVF_TC_INVALID;
 adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 adapter->current_op = VIRTCHNL_OP_DISABLE_CHANNELS;
 adapter->aq_required &= ~IAVF_FLAG_AQ_DISABLE_CHANNELS;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_CHANNELS, ((void*)0), 0);
}
