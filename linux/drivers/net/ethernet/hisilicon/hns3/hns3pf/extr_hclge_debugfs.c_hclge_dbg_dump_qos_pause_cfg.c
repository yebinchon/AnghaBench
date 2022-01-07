
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_pause_param_cmd {int pause_trans_time; int pause_trans_gap; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_CFG_MAC_PARA ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static void hclge_dbg_dump_qos_pause_cfg(struct hclge_dev *hdev)
{
 struct hclge_cfg_pause_param_cmd *pause_param;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_MAC_PARA, 1);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev, "dump checksum fail, ret = %d\n",
   ret);
  return;
 }

 pause_param = (struct hclge_cfg_pause_param_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "dump qos pause cfg\n");
 dev_info(&hdev->pdev->dev, "pause_trans_gap: 0x%x\n",
   pause_param->pause_trans_gap);
 dev_info(&hdev->pdev->dev, "pause_trans_time: 0x%x\n",
   pause_param->pause_trans_time);
}
