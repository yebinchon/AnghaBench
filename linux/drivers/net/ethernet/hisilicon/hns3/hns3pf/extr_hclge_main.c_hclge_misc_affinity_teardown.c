
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector_irq; } ;
struct hclge_dev {TYPE_1__ misc_vector; } ;


 int irq_set_affinity_hint (int ,int *) ;
 int irq_set_affinity_notifier (int ,int *) ;

__attribute__((used)) static void hclge_misc_affinity_teardown(struct hclge_dev *hdev)
{
 irq_set_affinity_notifier(hdev->misc_vector.vector_irq, ((void*)0));
 irq_set_affinity_hint(hdev->misc_vector.vector_irq, ((void*)0));
}
