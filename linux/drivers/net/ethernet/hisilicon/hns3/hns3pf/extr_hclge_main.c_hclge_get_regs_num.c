
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HCLGE_OPC_QUERY_REG_NUM ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_get_regs_num(struct hclge_dev *hdev, u32 *regs_num_32_bit,
         u32 *regs_num_64_bit)
{
 struct hclge_desc desc;
 u32 total_num;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_REG_NUM, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Query register number cmd failed, ret = %d.\n", ret);
  return ret;
 }

 *regs_num_32_bit = le32_to_cpu(desc.data[0]);
 *regs_num_64_bit = le32_to_cpu(desc.data[1]);

 total_num = *regs_num_32_bit + *regs_num_64_bit;
 if (!total_num)
  return -EINVAL;

 return 0;
}
