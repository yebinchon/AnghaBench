
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_rss_lut {int lut_entries; int lut; int vsi_id; } ;
struct TYPE_4__ {int id; } ;
struct iavf_adapter {scalar_t__ current_op; int rss_lut_size; int aq_required; int rss_lut; TYPE_2__ vsi; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_SET_RSS_LUT ;
 scalar_t__ VIRTCHNL_OP_CONFIG_RSS_LUT ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int) ;
 int kfree (struct virtchnl_rss_lut*) ;
 struct virtchnl_rss_lut* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;

void iavf_set_rss_lut(struct iavf_adapter *adapter)
{
 struct virtchnl_rss_lut *vrl;
 int len;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot set RSS LUT, command %d pending\n",
   adapter->current_op);
  return;
 }
 len = sizeof(struct virtchnl_rss_lut) +
       (adapter->rss_lut_size * sizeof(u8)) - 1;
 vrl = kzalloc(len, GFP_KERNEL);
 if (!vrl)
  return;
 vrl->vsi_id = adapter->vsi.id;
 vrl->lut_entries = adapter->rss_lut_size;
 memcpy(vrl->lut, adapter->rss_lut, adapter->rss_lut_size);
 adapter->current_op = VIRTCHNL_OP_CONFIG_RSS_LUT;
 adapter->aq_required &= ~IAVF_FLAG_AQ_SET_RSS_LUT;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_RSS_LUT, (u8 *)vrl, len);
 kfree(vrl);
}
