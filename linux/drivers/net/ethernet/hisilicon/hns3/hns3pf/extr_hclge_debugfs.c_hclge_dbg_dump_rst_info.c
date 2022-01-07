
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset_fail_cnt; int reset_cnt; int hw_reset_done_cnt; int reset_done_cnt; int imp_rst_cnt; int global_rst_cnt; int flr_rst_cnt; int pf_rst_cnt; } ;
struct hclge_dev {int hw; TYPE_2__* pdev; TYPE_1__ rst_stats; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGE_FUN_RST_ING ;
 int HCLGE_GLOBAL_RESET_REG ;
 int HCLGE_MISC_RESET_STS_REG ;
 int HCLGE_MISC_VECTOR_INT_STS ;
 int HCLGE_MISC_VECTOR_REG_BASE ;
 int HCLGE_NIC_CSQ_DEPTH_REG ;
 int dev_info (int *,char*,int ) ;
 int hclge_read_dev (int *,int ) ;

__attribute__((used)) static void hclge_dbg_dump_rst_info(struct hclge_dev *hdev)
{
 dev_info(&hdev->pdev->dev, "PF reset count: %u\n",
   hdev->rst_stats.pf_rst_cnt);
 dev_info(&hdev->pdev->dev, "FLR reset count: %u\n",
   hdev->rst_stats.flr_rst_cnt);
 dev_info(&hdev->pdev->dev, "GLOBAL reset count: %u\n",
   hdev->rst_stats.global_rst_cnt);
 dev_info(&hdev->pdev->dev, "IMP reset count: %u\n",
   hdev->rst_stats.imp_rst_cnt);
 dev_info(&hdev->pdev->dev, "reset done count: %u\n",
   hdev->rst_stats.reset_done_cnt);
 dev_info(&hdev->pdev->dev, "HW reset done count: %u\n",
   hdev->rst_stats.hw_reset_done_cnt);
 dev_info(&hdev->pdev->dev, "reset count: %u\n",
   hdev->rst_stats.reset_cnt);
 dev_info(&hdev->pdev->dev, "reset count: %u\n",
   hdev->rst_stats.reset_cnt);
 dev_info(&hdev->pdev->dev, "reset fail count: %u\n",
   hdev->rst_stats.reset_fail_cnt);
 dev_info(&hdev->pdev->dev, "vector0 interrupt enable status: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_MISC_VECTOR_REG_BASE));
 dev_info(&hdev->pdev->dev, "reset interrupt source: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_MISC_RESET_STS_REG));
 dev_info(&hdev->pdev->dev, "reset interrupt status: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_MISC_VECTOR_INT_STS));
 dev_info(&hdev->pdev->dev, "hardware reset status: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_GLOBAL_RESET_REG));
 dev_info(&hdev->pdev->dev, "handshake status: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_NIC_CSQ_DEPTH_REG));
 dev_info(&hdev->pdev->dev, "function reset status: 0x%x\n",
   hclge_read_dev(&hdev->hw, HCLGE_FUN_RST_ING));
}
