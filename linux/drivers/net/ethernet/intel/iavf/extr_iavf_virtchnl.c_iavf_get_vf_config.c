
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct virtchnl_vsi_resource {int dummy; } ;
struct virtchnl_vf_resource {int dummy; } ;
struct iavf_hw {int dummy; } ;
struct TYPE_2__ {int cookie_low; int cookie_high; } ;
struct iavf_arq_event_info {int buf_len; int msg_buf; int msg_len; TYPE_1__ desc; } ;
struct iavf_adapter {int vf_res; struct iavf_hw hw; } ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IAVF_MAX_VF_VSI ;
 int VIRTCHNL_OP_GET_VF_RESOURCES ;
 int iavf_clean_arq_element (struct iavf_hw*,struct iavf_arq_event_info*,int *) ;
 int iavf_validate_num_queues (struct iavf_adapter*) ;
 int iavf_vf_parse_hw_config (struct iavf_hw*,int ) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int min (int ,int) ;

int iavf_get_vf_config(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;
 struct iavf_arq_event_info event;
 enum virtchnl_ops op;
 enum iavf_status err;
 u16 len;

 len = sizeof(struct virtchnl_vf_resource) +
  IAVF_MAX_VF_VSI * sizeof(struct virtchnl_vsi_resource);
 event.buf_len = len;
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
  if (op == VIRTCHNL_OP_GET_VF_RESOURCES)
   break;
 }

 err = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
 memcpy(adapter->vf_res, event.msg_buf, min(event.msg_len, len));




 if (!err)
  iavf_validate_num_queues(adapter);
 iavf_vf_parse_hw_config(hw, adapter->vf_res);
out_alloc:
 kfree(event.msg_buf);
out:
 return err;
}
