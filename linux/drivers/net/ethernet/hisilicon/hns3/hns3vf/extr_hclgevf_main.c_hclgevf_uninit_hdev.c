
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int state; } ;


 int HCLGEVF_STATE_IRQ_INITED ;
 int hclgevf_cmd_uninit (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_uninit (struct hclgevf_dev*) ;
 int hclgevf_pci_uninit (struct hclgevf_dev*) ;
 int hclgevf_state_uninit (struct hclgevf_dev*) ;
 int hclgevf_uninit_msi (struct hclgevf_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_uninit_hdev(struct hclgevf_dev *hdev)
{
 hclgevf_state_uninit(hdev);

 if (test_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
  hclgevf_misc_irq_uninit(hdev);
  hclgevf_uninit_msi(hdev);
 }

 hclgevf_pci_uninit(hdev);
 hclgevf_cmd_uninit(hdev);
}
