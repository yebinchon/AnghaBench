
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_misc_vector {scalar_t__ addr; int vector_irq; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;
struct hclge_dev {int num_msi_left; int num_msi_used; scalar_t__* vector_status; TYPE_1__ hw; int pdev; struct hclge_misc_vector misc_vector; } ;


 scalar_t__ HCLGE_MISC_VECTOR_REG_BASE ;
 int pci_irq_vector (int ,int ) ;

__attribute__((used)) static void hclge_get_misc_vector(struct hclge_dev *hdev)
{
 struct hclge_misc_vector *vector = &hdev->misc_vector;

 vector->vector_irq = pci_irq_vector(hdev->pdev, 0);

 vector->addr = hdev->hw.io_base + HCLGE_MISC_VECTOR_REG_BASE;
 hdev->vector_status[0] = 0;

 hdev->num_msi_left -= 1;
 hdev->num_msi_used += 1;
}
