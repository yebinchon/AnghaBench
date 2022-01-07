
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_dev {int reset_type; int reset_pending; int hw; struct pci_dev* pdev; TYPE_1__* vport; } ;
struct TYPE_2__ {struct hnae3_handle nic; } ;


 int HCLGE_FUN_RST_ING ;
 int HCLGE_GLOBAL_RESET_BIT ;
 int HCLGE_GLOBAL_RESET_REG ;



 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ hclge_get_hw_reset_stat (struct hnae3_handle*) ;
 int hclge_read_dev (int *,int ) ;
 int hclge_reset_task_schedule (struct hclge_dev*) ;
 int hclge_write_dev (int *,int ,int ) ;
 int hnae3_set_bit (int ,int ,int) ;
 int set_bit (int const,int *) ;

__attribute__((used)) static void hclge_do_reset(struct hclge_dev *hdev)
{
 struct hnae3_handle *handle = &hdev->vport[0].nic;
 struct pci_dev *pdev = hdev->pdev;
 u32 val;

 if (hclge_get_hw_reset_stat(handle)) {
  dev_info(&pdev->dev, "Hardware reset not finish\n");
  dev_info(&pdev->dev, "func_rst_reg:0x%x, global_rst_reg:0x%x\n",
    hclge_read_dev(&hdev->hw, HCLGE_FUN_RST_ING),
    hclge_read_dev(&hdev->hw, HCLGE_GLOBAL_RESET_REG));
  return;
 }

 switch (hdev->reset_type) {
 case 128:
  val = hclge_read_dev(&hdev->hw, HCLGE_GLOBAL_RESET_REG);
  hnae3_set_bit(val, HCLGE_GLOBAL_RESET_BIT, 1);
  hclge_write_dev(&hdev->hw, HCLGE_GLOBAL_RESET_REG, val);
  dev_info(&pdev->dev, "Global Reset requested\n");
  break;
 case 129:
  dev_info(&pdev->dev, "PF Reset requested\n");

  set_bit(129, &hdev->reset_pending);
  hclge_reset_task_schedule(hdev);
  break;
 case 130:
  dev_info(&pdev->dev, "FLR requested\n");

  set_bit(130, &hdev->reset_pending);
  hclge_reset_task_schedule(hdev);
  break;
 default:
  dev_warn(&pdev->dev,
    "Unsupported reset type: %d\n", hdev->reset_type);
  break;
 }
}
