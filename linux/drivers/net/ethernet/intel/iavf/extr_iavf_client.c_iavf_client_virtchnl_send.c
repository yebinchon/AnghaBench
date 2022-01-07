
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iavf_info {struct iavf_adapter* vf; } ;
struct iavf_client {int dummy; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct TYPE_6__ {TYPE_1__ aq; } ;
struct iavf_adapter {TYPE_3__ hw; TYPE_2__* pdev; scalar_t__ aq_required; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
struct TYPE_5__ {int dev; } ;


 int EAGAIN ;
 int IAVF_SUCCESS ;
 int VIRTCHNL_OP_IWARP ;
 int dev_err (int *,char*,int,int ) ;
 int iavf_aq_send_msg_to_pf (TYPE_3__*,int ,int ,int *,int ,int *) ;

__attribute__((used)) static u32 iavf_client_virtchnl_send(struct iavf_info *ldev,
         struct iavf_client *client,
         u8 *msg, u16 len)
{
 struct iavf_adapter *adapter = ldev->vf;
 enum iavf_status err;

 if (adapter->aq_required)
  return -EAGAIN;

 err = iavf_aq_send_msg_to_pf(&adapter->hw, VIRTCHNL_OP_IWARP,
         IAVF_SUCCESS, msg, len, ((void*)0));
 if (err)
  dev_err(&adapter->pdev->dev, "Unable to send iWarp message to PF, error %d, aq status %d\n",
   err, adapter->hw.aq.asq_last_status);

 return err;
}
