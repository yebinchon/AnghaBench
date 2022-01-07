
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_misc_vector {int vector_irq; scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;
struct hclgevf_dev {int num_msi_left; int num_msi_used; int * vector_irq; scalar_t__* vector_status; TYPE_1__ hw; int pdev; struct hclgevf_misc_vector misc_vector; } ;


 size_t HCLGEVF_MISC_VECTOR_NUM ;
 scalar_t__ HCLGEVF_MISC_VECTOR_REG_BASE ;
 int pci_irq_vector (int ,size_t) ;

__attribute__((used)) static void hclgevf_get_misc_vector(struct hclgevf_dev *hdev)
{
 struct hclgevf_misc_vector *vector = &hdev->misc_vector;

 vector->vector_irq = pci_irq_vector(hdev->pdev,
         HCLGEVF_MISC_VECTOR_NUM);
 vector->addr = hdev->hw.io_base + HCLGEVF_MISC_VECTOR_REG_BASE;

 hdev->vector_status[HCLGEVF_MISC_VECTOR_NUM] = 0;
 hdev->vector_irq[HCLGEVF_MISC_VECTOR_NUM] = vector->vector_irq;

 hdev->num_msi_left -= 1;
 hdev->num_msi_used += 1;
}
