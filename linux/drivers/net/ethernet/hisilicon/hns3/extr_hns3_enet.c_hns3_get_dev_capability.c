
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; } ;
struct hnae3_ae_dev {int flag; } ;


 int HNAE3_DEV_SUPPORT_FD_B ;
 int HNAE3_DEV_SUPPORT_GRO_B ;
 int hnae3_set_bit (int ,int ,int) ;

__attribute__((used)) static void hns3_get_dev_capability(struct pci_dev *pdev,
        struct hnae3_ae_dev *ae_dev)
{
 if (pdev->revision >= 0x21) {
  hnae3_set_bit(ae_dev->flag, HNAE3_DEV_SUPPORT_FD_B, 1);
  hnae3_set_bit(ae_dev->flag, HNAE3_DEV_SUPPORT_GRO_B, 1);
 }
}
