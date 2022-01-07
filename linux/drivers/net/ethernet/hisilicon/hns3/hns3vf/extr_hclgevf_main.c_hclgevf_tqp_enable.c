
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_dev {TYPE_1__* pdev; int hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct hclgevf_cfg_com_tqp_queue_cmd {unsigned int enable; void* stream_id; void* tqp_id; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_OPC_CFG_COM_TQP_QUEUE ;
 unsigned int HCLGEVF_RING_ID_MASK ;
 unsigned int HCLGEVF_TQP_ENABLE_B ;
 void* cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;

__attribute__((used)) static int hclgevf_tqp_enable(struct hclgevf_dev *hdev, unsigned int tqp_id,
         int stream_id, bool enable)
{
 struct hclgevf_cfg_com_tqp_queue_cmd *req;
 struct hclgevf_desc desc;
 int status;

 req = (struct hclgevf_cfg_com_tqp_queue_cmd *)desc.data;

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_CFG_COM_TQP_QUEUE,
         0);
 req->tqp_id = cpu_to_le16(tqp_id & HCLGEVF_RING_ID_MASK);
 req->stream_id = cpu_to_le16(stream_id);
 if (enable)
  req->enable |= 1U << HCLGEVF_TQP_ENABLE_B;

 status = hclgevf_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "TQP enable fail, status =%d.\n", status);

 return status;
}
