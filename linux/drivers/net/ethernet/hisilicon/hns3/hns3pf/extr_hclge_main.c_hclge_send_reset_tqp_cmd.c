
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hclge_reset_tqp_queue_cmd {int reset_req; int tqp_id; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_RESET_TQP_QUEUE ;
 int HCLGE_RING_ID_MASK ;
 int HCLGE_TQP_RESET_B ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,unsigned int) ;

__attribute__((used)) static int hclge_send_reset_tqp_cmd(struct hclge_dev *hdev, u16 queue_id,
        bool enable)
{
 struct hclge_reset_tqp_queue_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_RESET_TQP_QUEUE, 0);

 req = (struct hclge_reset_tqp_queue_cmd *)desc.data;
 req->tqp_id = cpu_to_le16(queue_id & HCLGE_RING_ID_MASK);
 if (enable)
  hnae3_set_bit(req->reset_req, HCLGE_TQP_RESET_B, 1U);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Send tqp reset cmd error, status =%d\n", ret);
  return ret;
 }

 return 0;
}
