
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hclge_reset_tqp_queue_cmd {int ready_to_reset; int tqp_id; } ;
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
 int hnae3_get_bit (int ,int ) ;

__attribute__((used)) static int hclge_get_reset_status(struct hclge_dev *hdev, u16 queue_id)
{
 struct hclge_reset_tqp_queue_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_RESET_TQP_QUEUE, 1);

 req = (struct hclge_reset_tqp_queue_cmd *)desc.data;
 req->tqp_id = cpu_to_le16(queue_id & HCLGE_RING_ID_MASK);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Get reset status error, status =%d\n", ret);
  return ret;
 }

 return hnae3_get_bit(req->ready_to_reset, HCLGE_TQP_RESET_B);
}
