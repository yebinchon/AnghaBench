
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int last_reset_time; int reset_state; int reset_level; scalar_t__ default_reset_request; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_RESET_REQUESTED ;
 int HNAE3_VF_FUNC_RESET ;
 int dev_info (int *,char*) ;
 int hclgevf_get_reset_level (struct hclgevf_dev*,scalar_t__*) ;
 int hclgevf_reset_task_schedule (struct hclgevf_dev*) ;
 int jiffies ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_reset_event(struct pci_dev *pdev,
    struct hnae3_handle *handle)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);
 struct hclgevf_dev *hdev = ae_dev->priv;

 dev_info(&hdev->pdev->dev, "received reset request from VF enet\n");

 if (hdev->default_reset_request)
  hdev->reset_level =
   hclgevf_get_reset_level(hdev,
      &hdev->default_reset_request);
 else
  hdev->reset_level = HNAE3_VF_FUNC_RESET;


 set_bit(HCLGEVF_RESET_REQUESTED, &hdev->reset_state);
 hclgevf_reset_task_schedule(hdev);

 hdev->last_reset_time = jiffies;
}
