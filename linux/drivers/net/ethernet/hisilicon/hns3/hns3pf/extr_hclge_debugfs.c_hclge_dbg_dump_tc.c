
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_ets_tc_weight_cmd {int * tc_weight; int weight_offset; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_ETS_TC_WEIGHT ;
 int HNAE3_MAX_TC ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_title_idx_print (struct hclge_dev*,int ,int,char*,char*,char*) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;

__attribute__((used)) static void hclge_dbg_dump_tc(struct hclge_dev *hdev)
{
 struct hclge_ets_tc_weight_cmd *ets_weight;
 struct hclge_desc desc;
 int i, ret;

 if (!hnae3_dev_dcb_supported(hdev)) {
  dev_info(&hdev->pdev->dev,
    "Only DCB-supported dev supports tc\n");
  return;
 }

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_ETS_TC_WEIGHT, 1);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev, "dump tc fail, ret = %d\n", ret);
  return;
 }

 ets_weight = (struct hclge_ets_tc_weight_cmd *)desc.data;

 dev_info(&hdev->pdev->dev, "dump tc\n");
 dev_info(&hdev->pdev->dev, "weight_offset: %u\n",
   ets_weight->weight_offset);

 for (i = 0; i < HNAE3_MAX_TC; i++)
  hclge_title_idx_print(hdev, ets_weight->tc_weight[i], i,
          "tc", "no sp mode", "sp mode");
}
