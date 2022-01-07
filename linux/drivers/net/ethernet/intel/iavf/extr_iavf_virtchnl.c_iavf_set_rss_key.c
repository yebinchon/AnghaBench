
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_rss_key {int key_len; int key; int vsi_id; } ;
struct TYPE_4__ {int id; } ;
struct iavf_adapter {scalar_t__ current_op; int rss_key_size; int aq_required; int rss_key; TYPE_2__ vsi; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_SET_RSS_KEY ;
 scalar_t__ VIRTCHNL_OP_CONFIG_RSS_KEY ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int) ;
 int kfree (struct virtchnl_rss_key*) ;
 struct virtchnl_rss_key* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;

void iavf_set_rss_key(struct iavf_adapter *adapter)
{
 struct virtchnl_rss_key *vrk;
 int len;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot set RSS key, command %d pending\n",
   adapter->current_op);
  return;
 }
 len = sizeof(struct virtchnl_rss_key) +
       (adapter->rss_key_size * sizeof(u8)) - 1;
 vrk = kzalloc(len, GFP_KERNEL);
 if (!vrk)
  return;
 vrk->vsi_id = adapter->vsi.id;
 vrk->key_len = adapter->rss_key_size;
 memcpy(vrk->key, adapter->rss_key, adapter->rss_key_size);

 adapter->current_op = VIRTCHNL_OP_CONFIG_RSS_KEY;
 adapter->aq_required &= ~IAVF_FLAG_AQ_SET_RSS_KEY;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_RSS_KEY, (u8 *)vrk, len);
 kfree(vrk);
}
