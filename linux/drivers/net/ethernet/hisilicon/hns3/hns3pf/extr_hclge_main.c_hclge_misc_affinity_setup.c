
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int release; int notify; } ;
struct TYPE_3__ {int vector_irq; } ;
struct hclge_dev {TYPE_2__ affinity_notify; TYPE_1__ misc_vector; int affinity_mask; } ;


 int hclge_irq_affinity_notify ;
 int hclge_irq_affinity_release ;
 int irq_set_affinity_hint (int ,int *) ;
 int irq_set_affinity_notifier (int ,TYPE_2__*) ;

__attribute__((used)) static void hclge_misc_affinity_setup(struct hclge_dev *hdev)
{
 irq_set_affinity_hint(hdev->misc_vector.vector_irq,
         &hdev->affinity_mask);

 hdev->affinity_notify.notify = hclge_irq_affinity_notify;
 hdev->affinity_notify.release = hclge_irq_affinity_release;
 irq_set_affinity_notifier(hdev->misc_vector.vector_irq,
      &hdev->affinity_notify);
}
