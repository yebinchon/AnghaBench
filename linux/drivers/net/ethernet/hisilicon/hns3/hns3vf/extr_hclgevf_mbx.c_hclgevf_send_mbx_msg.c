
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct TYPE_3__ {int mbx_mutex; } ;
struct hclgevf_dev {TYPE_2__* pdev; int hw; TYPE_1__ mbx_resp; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct hclge_mbx_vf_to_pf_cmd {void** msg; int mbx_need_resp; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int HCLGEVF_OPC_MBX_VF_TO_PF ;
 int HCLGE_MBX_MAX_MSG_SIZE ;
 int HCLGE_MBX_NEED_RESP_BIT ;
 int dev_err (int *,char*,int,...) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;
 int hclgevf_get_mbx_resp (struct hclgevf_dev*,void*,void*,int*,void*) ;
 int hclgevf_reset_mbx_resp_status (struct hclgevf_dev*) ;
 int memcpy (void**,int const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hclgevf_send_mbx_msg(struct hclgevf_dev *hdev, u16 code, u16 subcode,
    const u8 *msg_data, u8 msg_len, bool need_resp,
    u8 *resp_data, u16 resp_len)
{
 struct hclge_mbx_vf_to_pf_cmd *req;
 struct hclgevf_desc desc;
 int status;

 req = (struct hclge_mbx_vf_to_pf_cmd *)desc.data;


 if (msg_len > (HCLGE_MBX_MAX_MSG_SIZE - 2)) {
  dev_err(&hdev->pdev->dev,
   "VF send mbx msg fail, msg len %d exceeds max len %d\n",
   msg_len, HCLGE_MBX_MAX_MSG_SIZE);
  return -EINVAL;
 }

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_MBX_VF_TO_PF, 0);
 req->mbx_need_resp |= need_resp ? HCLGE_MBX_NEED_RESP_BIT :
       ~HCLGE_MBX_NEED_RESP_BIT;
 req->msg[0] = code;
 req->msg[1] = subcode;
 if (msg_data)
  memcpy(&req->msg[2], msg_data, msg_len);


 if (need_resp) {
  mutex_lock(&hdev->mbx_resp.mbx_mutex);
  hclgevf_reset_mbx_resp_status(hdev);
  status = hclgevf_cmd_send(&hdev->hw, &desc, 1);
  if (status) {
   dev_err(&hdev->pdev->dev,
    "VF failed(=%d) to send mbx message to PF\n",
    status);
   mutex_unlock(&hdev->mbx_resp.mbx_mutex);
   return status;
  }

  status = hclgevf_get_mbx_resp(hdev, code, subcode, resp_data,
           resp_len);
  mutex_unlock(&hdev->mbx_resp.mbx_mutex);
 } else {

  status = hclgevf_cmd_send(&hdev->hw, &desc, 1);
  if (status) {
   dev_err(&hdev->pdev->dev,
    "VF failed(=%d) to send mbx message to PF\n",
    status);
   return status;
  }
 }

 return status;
}
