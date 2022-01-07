
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vrh ;
typedef int u8 ;
struct virtchnl_rss_hena {int hena; } ;
struct iavf_adapter {scalar_t__ current_op; int aq_required; int hena; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int IAVF_FLAG_AQ_SET_HENA ;
 scalar_t__ VIRTCHNL_OP_SET_RSS_HENA ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int) ;

void iavf_set_hena(struct iavf_adapter *adapter)
{
 struct virtchnl_rss_hena vrh;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot set RSS hash enable, command %d pending\n",
   adapter->current_op);
  return;
 }
 vrh.hena = adapter->hena;
 adapter->current_op = VIRTCHNL_OP_SET_RSS_HENA;
 adapter->aq_required &= ~IAVF_FLAG_AQ_SET_HENA;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_SET_RSS_HENA, (u8 *)&vrh,
    sizeof(vrh));
}
