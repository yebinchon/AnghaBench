
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hclgevf_dev {scalar_t__ reset_type; int state; struct pci_dev* pdev; } ;


 int HCLGEVF_STATE_IRQ_INITED ;
 scalar_t__ HNAE3_VF_FULL_RESET ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int hclgevf_init_msi (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_init (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_uninit (struct hclgevf_dev*) ;
 int hclgevf_uninit_msi (struct hclgevf_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hclgevf_pci_reset(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 int ret = 0;

 if (hdev->reset_type == HNAE3_VF_FULL_RESET &&
     test_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
  hclgevf_misc_irq_uninit(hdev);
  hclgevf_uninit_msi(hdev);
  clear_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
 }

 if (!test_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
  pci_set_master(pdev);
  ret = hclgevf_init_msi(hdev);
  if (ret) {
   dev_err(&pdev->dev,
    "failed(%d) to init MSI/MSI-X\n", ret);
   return ret;
  }

  ret = hclgevf_misc_irq_init(hdev);
  if (ret) {
   hclgevf_uninit_msi(hdev);
   dev_err(&pdev->dev, "failed(%d) to init Misc IRQ(vector0)\n",
    ret);
   return ret;
  }

  set_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
 }

 return ret;
}
