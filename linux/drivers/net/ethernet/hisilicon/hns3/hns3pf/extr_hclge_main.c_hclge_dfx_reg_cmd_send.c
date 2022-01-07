
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int flag; } ;
typedef enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CMD_FLAG_NEXT ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int,int) ;

__attribute__((used)) static int hclge_dfx_reg_cmd_send(struct hclge_dev *hdev,
      struct hclge_desc *desc_src, int bd_num,
      enum hclge_opcode_type cmd)
{
 struct hclge_desc *desc = desc_src;
 int i, ret;

 hclge_cmd_setup_basic_desc(desc, cmd, 1);
 for (i = 0; i < bd_num - 1; i++) {
  desc->flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
  desc++;
  hclge_cmd_setup_basic_desc(desc, cmd, 1);
 }

 desc = desc_src;
 ret = hclge_cmd_send(&hdev->hw, desc, bd_num);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Query dfx reg cmd(0x%x) send fail, status is %d.\n",
   cmd, ret);

 return ret;
}
