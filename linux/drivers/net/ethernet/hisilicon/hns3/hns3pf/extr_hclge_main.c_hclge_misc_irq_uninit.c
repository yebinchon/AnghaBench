
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector_irq; } ;
struct hclge_dev {TYPE_1__ misc_vector; } ;


 int free_irq (int ,struct hclge_dev*) ;
 int hclge_free_vector (struct hclge_dev*,int ) ;

__attribute__((used)) static void hclge_misc_irq_uninit(struct hclge_dev *hdev)
{
 free_irq(hdev->misc_vector.vector_irq, hdev);
 hclge_free_vector(hdev, 0);
}
