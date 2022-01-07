
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vpi ;
typedef int u8 ;
struct virtchnl_promisc_info {int flags; int vsi_id; } ;
struct iavf_adapter {scalar_t__ current_op; int flags; int aq_required; TYPE_2__* vsi_res; TYPE_1__* pdev; } ;
struct TYPE_4__ {int vsi_id; } ;
struct TYPE_3__ {int dev; } ;


 int FLAG_VF_MULTICAST_PROMISC ;
 int FLAG_VF_UNICAST_PROMISC ;
 int IAVF_FLAG_ALLMULTI_ON ;
 int IAVF_FLAG_AQ_RELEASE_ALLMULTI ;
 int IAVF_FLAG_AQ_RELEASE_PROMISC ;
 int IAVF_FLAG_AQ_REQUEST_ALLMULTI ;
 int IAVF_FLAG_AQ_REQUEST_PROMISC ;
 int IAVF_FLAG_PROMISC_ON ;
 scalar_t__ VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_info (int *,char*) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,int) ;

void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
{
 struct virtchnl_promisc_info vpi;
 int promisc_all;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot set promiscuous mode, command %d pending\n",
   adapter->current_op);
  return;
 }

 promisc_all = FLAG_VF_UNICAST_PROMISC |
        FLAG_VF_MULTICAST_PROMISC;
 if ((flags & promisc_all) == promisc_all) {
  adapter->flags |= IAVF_FLAG_PROMISC_ON;
  adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_PROMISC;
  dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
 }

 if (flags & FLAG_VF_MULTICAST_PROMISC) {
  adapter->flags |= IAVF_FLAG_ALLMULTI_ON;
  adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_ALLMULTI;
  dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
 }

 if (!flags) {
  adapter->flags &= ~(IAVF_FLAG_PROMISC_ON |
        IAVF_FLAG_ALLMULTI_ON);
  adapter->aq_required &= ~(IAVF_FLAG_AQ_RELEASE_PROMISC |
       IAVF_FLAG_AQ_RELEASE_ALLMULTI);
  dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
 }

 adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
 vpi.vsi_id = adapter->vsi_res->vsi_id;
 vpi.flags = flags;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
    (u8 *)&vpi, sizeof(vpi));
}
