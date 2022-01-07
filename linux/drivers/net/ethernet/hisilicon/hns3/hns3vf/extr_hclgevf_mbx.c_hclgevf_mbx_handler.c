
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclgevf_mbx_resp_status {int received_resp; int origin_mbx_msg; int resp_status; int * additional_info; } ;
struct hclgevf_cmq_ring {size_t next_to_use; struct hclgevf_desc* desc; } ;
struct TYPE_6__ {struct hclgevf_cmq_ring crq; } ;
struct TYPE_8__ {TYPE_1__ cmq; } ;
struct TYPE_9__ {size_t tail; int count; int ** msg_q; } ;
struct hclgevf_dev {int mbx_event_pending; TYPE_3__ hw; TYPE_2__* pdev; TYPE_5__ arq; int state; struct hclgevf_mbx_resp_status mbx_resp; } ;
struct hclgevf_desc {scalar_t__ flag; scalar_t__ data; } ;
struct hclge_mbx_pf_to_vf_cmd {int* msg; } ;
struct TYPE_7__ {int dev; } ;


 int HCLGEVF_CMDQ_RX_OUTVLD_B ;
 int HCLGEVF_NIC_CRQ_HEAD_REG ;
 int HCLGEVF_STATE_CMD_DISABLE ;



 int HCLGE_MBX_MAX_ARQ_MSG_NUM ;
 int HCLGE_MBX_MAX_ARQ_MSG_SIZE ;
 int HCLGE_MBX_MAX_RESP_DATA_SIZE ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int hclge_mbx_ring_ptr_move_crq (struct hclgevf_cmq_ring*) ;
 int hclge_mbx_tail_ptr_move_arq (TYPE_5__) ;
 int hclgevf_cmd_crq_empty (TYPE_3__*) ;
 int hclgevf_mbx_task_schedule (struct hclgevf_dev*) ;
 int hclgevf_write_dev (TYPE_3__*,int ,size_t) ;
 int hnae3_get_bit (int ,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (int *,int*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void hclgevf_mbx_handler(struct hclgevf_dev *hdev)
{
 struct hclgevf_mbx_resp_status *resp;
 struct hclge_mbx_pf_to_vf_cmd *req;
 struct hclgevf_cmq_ring *crq;
 struct hclgevf_desc *desc;
 u16 *msg_q;
 u16 flag;
 u8 *temp;
 int i;

 resp = &hdev->mbx_resp;
 crq = &hdev->hw.cmq.crq;

 while (!hclgevf_cmd_crq_empty(&hdev->hw)) {
  if (test_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
   dev_info(&hdev->pdev->dev, "vf crq need init\n");
   return;
  }

  desc = &crq->desc[crq->next_to_use];
  req = (struct hclge_mbx_pf_to_vf_cmd *)desc->data;

  flag = le16_to_cpu(crq->desc[crq->next_to_use].flag);
  if (unlikely(!hnae3_get_bit(flag, HCLGEVF_CMDQ_RX_OUTVLD_B))) {
   dev_warn(&hdev->pdev->dev,
     "dropped invalid mailbox message, code = %d\n",
     req->msg[0]);


   crq->desc[crq->next_to_use].flag = 0;
   hclge_mbx_ring_ptr_move_crq(crq);
   continue;
  }







  switch (req->msg[0]) {
  case 129:
   if (resp->received_resp)
    dev_warn(&hdev->pdev->dev,
      "VF mbx resp flag not clear(%d)\n",
      req->msg[1]);
   resp->received_resp = 1;

   resp->origin_mbx_msg = (req->msg[1] << 16);
   resp->origin_mbx_msg |= req->msg[2];
   resp->resp_status = req->msg[3];

   temp = (u8 *)&req->msg[4];
   for (i = 0; i < HCLGE_MBX_MAX_RESP_DATA_SIZE; i++) {
    resp->additional_info[i] = *temp;
    temp++;
   }
   break;
  case 131:
  case 132:
  case 130:
  case 128:





   hdev->mbx_event_pending = 1;




   if (atomic_read(&hdev->arq.count) >=
       HCLGE_MBX_MAX_ARQ_MSG_NUM) {
    dev_warn(&hdev->pdev->dev,
      "Async Q full, dropping msg(%d)\n",
      req->msg[1]);
    break;
   }


   msg_q = hdev->arq.msg_q[hdev->arq.tail];
   memcpy(&msg_q[0], req->msg,
          HCLGE_MBX_MAX_ARQ_MSG_SIZE * sizeof(u16));
   hclge_mbx_tail_ptr_move_arq(hdev->arq);
   atomic_inc(&hdev->arq.count);

   hclgevf_mbx_task_schedule(hdev);

   break;
  default:
   dev_err(&hdev->pdev->dev,
    "VF received unsupported(%d) mbx msg from PF\n",
    req->msg[0]);
   break;
  }
  crq->desc[crq->next_to_use].flag = 0;
  hclge_mbx_ring_ptr_move_crq(crq);
 }


 hclgevf_write_dev(&hdev->hw, HCLGEVF_NIC_CRQ_HEAD_REG,
     crq->next_to_use);
}
