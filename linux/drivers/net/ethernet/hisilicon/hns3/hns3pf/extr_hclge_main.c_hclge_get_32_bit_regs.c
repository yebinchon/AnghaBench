
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int * data; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCLGE_32_BIT_DESC_NODATA_LEN ;
 int HCLGE_32_BIT_REG_RTN_DATANUM ;
 int HCLGE_OPC_QUERY_32_BIT_REG ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 struct hclge_desc* kcalloc (int,int,int ) ;
 int kfree (struct hclge_desc*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_get_32_bit_regs(struct hclge_dev *hdev, u32 regs_num,
     void *data)
{



 struct hclge_desc *desc;
 u32 *reg_val = data;
 __le32 *desc_data;
 int nodata_num;
 int cmd_num;
 int i, k, n;
 int ret;

 if (regs_num == 0)
  return 0;

 nodata_num = 2;
 cmd_num = DIV_ROUND_UP(regs_num + nodata_num,
          8);
 desc = kcalloc(cmd_num, sizeof(struct hclge_desc), GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_QUERY_32_BIT_REG, 1);
 ret = hclge_cmd_send(&hdev->hw, desc, cmd_num);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Query 32 bit register cmd failed, ret = %d.\n", ret);
  kfree(desc);
  return ret;
 }

 for (i = 0; i < cmd_num; i++) {
  if (i == 0) {
   desc_data = (__le32 *)(&desc[i].data[0]);
   n = 8 - nodata_num;
  } else {
   desc_data = (__le32 *)(&desc[i]);
   n = 8;
  }
  for (k = 0; k < n; k++) {
   *reg_val++ = le32_to_cpu(*desc_data++);

   regs_num--;
   if (!regs_num)
    break;
  }
 }

 kfree(desc);
 return 0;
}
