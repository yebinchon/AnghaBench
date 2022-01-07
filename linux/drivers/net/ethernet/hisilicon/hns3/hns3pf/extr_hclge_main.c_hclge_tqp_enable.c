
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_com_tqp_queue_cmd {unsigned int enable; void* stream_id; void* tqp_id; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_CFG_COM_TQP_QUEUE ;
 unsigned int HCLGE_RING_ID_MASK ;
 unsigned int HCLGE_TQP_ENABLE_B ;
 void* cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tqp_enable(struct hclge_dev *hdev, unsigned int tqp_id,
       int stream_id, bool enable)
{
 struct hclge_desc desc;
 struct hclge_cfg_com_tqp_queue_cmd *req =
  (struct hclge_cfg_com_tqp_queue_cmd *)desc.data;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_COM_TQP_QUEUE, 0);
 req->tqp_id = cpu_to_le16(tqp_id & HCLGE_RING_ID_MASK);
 req->stream_id = cpu_to_le16(stream_id);
 if (enable)
  req->enable |= 1U << HCLGE_TQP_ENABLE_B;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Tqp enable fail, status =%d.\n", ret);
 return ret;
}
