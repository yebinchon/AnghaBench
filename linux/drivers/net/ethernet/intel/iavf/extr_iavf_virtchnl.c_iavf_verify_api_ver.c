
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtchnl_version_info {scalar_t__ major; scalar_t__ minor; } ;
struct iavf_hw {int dummy; } ;
struct TYPE_3__ {int cookie_low; int cookie_high; } ;
struct iavf_arq_event_info {scalar_t__ msg_buf; TYPE_1__ desc; int buf_len; } ;
struct iavf_adapter {struct virtchnl_version_info pf_version; TYPE_2__* pdev; struct iavf_hw hw; } ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IAVF_MAX_AQ_BUF_SIZE ;
 int VIRTCHNL_OP_VERSION ;
 scalar_t__ VIRTCHNL_VERSION_MAJOR ;
 scalar_t__ VIRTCHNL_VERSION_MINOR ;
 int dev_info (int *,char*,int) ;
 int iavf_clean_arq_element (struct iavf_hw*,struct iavf_arq_event_info*,int *) ;
 int kfree (scalar_t__) ;
 scalar_t__ kzalloc (int ,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

int iavf_verify_api_ver(struct iavf_adapter *adapter)
{
 struct virtchnl_version_info *pf_vvi;
 struct iavf_hw *hw = &adapter->hw;
 struct iavf_arq_event_info event;
 enum virtchnl_ops op;
 enum iavf_status err;

 event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
 event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
 if (!event.msg_buf) {
  err = -ENOMEM;
  goto out;
 }

 while (1) {
  err = iavf_clean_arq_element(hw, &event, ((void*)0));



  if (err)
   goto out_alloc;
  op =
      (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
  if (op == VIRTCHNL_OP_VERSION)
   break;
 }


 err = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
 if (err)
  goto out_alloc;

 if (op != VIRTCHNL_OP_VERSION) {
  dev_info(&adapter->pdev->dev, "Invalid reply type %d from PF\n",
   op);
  err = -EIO;
  goto out_alloc;
 }

 pf_vvi = (struct virtchnl_version_info *)event.msg_buf;
 adapter->pf_version = *pf_vvi;

 if ((pf_vvi->major > VIRTCHNL_VERSION_MAJOR) ||
     ((pf_vvi->major == VIRTCHNL_VERSION_MAJOR) &&
      (pf_vvi->minor > VIRTCHNL_VERSION_MINOR)))
  err = -EIO;

out_alloc:
 kfree(event.msg_buf);
out:
 return err;
}
