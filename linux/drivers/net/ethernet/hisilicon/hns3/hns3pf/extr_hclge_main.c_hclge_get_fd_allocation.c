
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hclge_get_fd_allocation_cmd {int stage2_counter_num; int stage1_counter_num; int stage2_entry_num; int stage1_entry_num; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_FD_GET_ALLOCATION ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_get_fd_allocation(struct hclge_dev *hdev,
       u32 *stage1_entry_num,
       u32 *stage2_entry_num,
       u16 *stage1_counter_num,
       u16 *stage2_counter_num)
{
 struct hclge_get_fd_allocation_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_FD_GET_ALLOCATION, 1);

 req = (struct hclge_get_fd_allocation_cmd *)desc.data;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev, "query fd allocation fail, ret=%d\n",
   ret);
  return ret;
 }

 *stage1_entry_num = le32_to_cpu(req->stage1_entry_num);
 *stage2_entry_num = le32_to_cpu(req->stage2_entry_num);
 *stage1_counter_num = le16_to_cpu(req->stage1_counter_num);
 *stage2_counter_num = le16_to_cpu(req->stage2_counter_num);

 return ret;
}
