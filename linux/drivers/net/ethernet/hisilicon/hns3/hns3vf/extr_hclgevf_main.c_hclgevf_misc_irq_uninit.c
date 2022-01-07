
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector_irq; } ;
struct hclgevf_dev {TYPE_1__ misc_vector; } ;


 int free_irq (int ,struct hclgevf_dev*) ;
 int hclgevf_enable_vector (TYPE_1__*,int) ;
 int hclgevf_free_vector (struct hclgevf_dev*,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void hclgevf_misc_irq_uninit(struct hclgevf_dev *hdev)
{

 hclgevf_enable_vector(&hdev->misc_vector, 0);
 synchronize_irq(hdev->misc_vector.vector_irq);
 free_irq(hdev->misc_vector.vector_irq, hdev);
 hclgevf_free_vector(hdev, 0);
}
