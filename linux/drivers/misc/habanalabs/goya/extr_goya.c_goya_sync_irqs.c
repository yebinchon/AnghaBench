
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion_queues_count; } ;
struct hl_device {int pdev; TYPE_1__ asic_prop; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int GOYA_EVENT_QUEUE_MSIX_IDX ;
 int HW_CAP_MSIX ;
 int pci_irq_vector (int ,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void goya_sync_irqs(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 int i;

 if (!(goya->hw_cap_initialized & HW_CAP_MSIX))
  return;


 for (i = 0 ; i < hdev->asic_prop.completion_queues_count ; i++)
  synchronize_irq(pci_irq_vector(hdev->pdev, i));

 synchronize_irq(pci_irq_vector(hdev->pdev, GOYA_EVENT_QUEUE_MSIX_IDX));
}
