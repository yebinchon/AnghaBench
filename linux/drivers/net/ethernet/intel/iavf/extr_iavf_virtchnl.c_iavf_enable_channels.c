
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_tc_info {int num_tc; TYPE_2__* list; } ;
struct TYPE_8__ {int state; TYPE_3__* ch_info; } ;
struct iavf_adapter {scalar_t__ current_op; int num_tc; int aq_required; int flags; TYPE_4__ ch_config; TYPE_1__* pdev; } ;
struct TYPE_7__ {int max_tx_rate; int offset; int count; } ;
struct TYPE_6__ {int max_tx_rate; scalar_t__ pad; int offset; int count; } ;
struct TYPE_5__ {int dev; } ;


 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_ENABLE_CHANNELS ;
 int IAVF_FLAG_REINIT_ITR_NEEDED ;
 scalar_t__ VIRTCHNL_OP_ENABLE_CHANNELS ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int __IAVF_TC_RUNNING ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,size_t) ;
 int kfree (struct virtchnl_tc_info*) ;
 struct virtchnl_tc_info* kzalloc (size_t,int ) ;
 int list ;
 size_t struct_size (struct virtchnl_tc_info*,int ,int) ;

void iavf_enable_channels(struct iavf_adapter *adapter)
{
 struct virtchnl_tc_info *vti = ((void*)0);
 size_t len;
 int i;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot configure mqprio, command %d pending\n",
   adapter->current_op);
  return;
 }

 len = struct_size(vti, list, adapter->num_tc - 1);
 vti = kzalloc(len, GFP_KERNEL);
 if (!vti)
  return;
 vti->num_tc = adapter->num_tc;
 for (i = 0; i < vti->num_tc; i++) {
  vti->list[i].count = adapter->ch_config.ch_info[i].count;
  vti->list[i].offset = adapter->ch_config.ch_info[i].offset;
  vti->list[i].pad = 0;
  vti->list[i].max_tx_rate =
    adapter->ch_config.ch_info[i].max_tx_rate;
 }

 adapter->ch_config.state = __IAVF_TC_RUNNING;
 adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 adapter->current_op = VIRTCHNL_OP_ENABLE_CHANNELS;
 adapter->aq_required &= ~IAVF_FLAG_AQ_ENABLE_CHANNELS;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_ENABLE_CHANNELS, (u8 *)vti, len);
 kfree(vti);
}
