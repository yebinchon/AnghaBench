
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int (* enable_interrupt ) (struct octeon_device*,int ) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_1__ fn_list; TYPE_2__* pci_dev; int * irq_name_storage; int * msix_entries; scalar_t__ vector; struct octeon_device* ioq_vector; scalar_t__ msix_on; } ;
struct msix_entry {int vector; } ;
struct TYPE_4__ {int dev; } ;


 int OCTEON_ALL_INTR ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int free_irq (int ,struct octeon_device*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (int *) ;
 scalar_t__ octeon_allocate_ioq_vector (struct octeon_device*,int ) ;
 scalar_t__ octeon_setup_interrupt (struct octeon_device*,int ) ;
 int pci_disable_msix (TYPE_2__*) ;
 int stub1 (struct octeon_device*,int ) ;
 int stub2 (struct octeon_device*,int ) ;

__attribute__((used)) static int
lio_irq_reallocate_irqs(struct octeon_device *oct, uint32_t num_ioqs)
{
 struct msix_entry *msix_entries;
 int num_msix_irqs = 0;
 int i;

 if (!oct->msix_on)
  return 0;




 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 if (oct->msix_on) {
  if (OCTEON_CN23XX_PF(oct))
   num_msix_irqs = oct->num_msix_irqs - 1;
  else if (OCTEON_CN23XX_VF(oct))
   num_msix_irqs = oct->num_msix_irqs;

  msix_entries = (struct msix_entry *)oct->msix_entries;
  for (i = 0; i < num_msix_irqs; i++) {
   if (oct->ioq_vector[i].vector) {

    irq_set_affinity_hint(msix_entries[i].vector,
            ((void*)0));
    free_irq(msix_entries[i].vector,
      &oct->ioq_vector[i]);
    oct->ioq_vector[i].vector = 0;
   }
  }


  if (OCTEON_CN23XX_PF(oct))
   free_irq(msix_entries[i].vector, oct);

  pci_disable_msix(oct->pci_dev);
  kfree(oct->msix_entries);
  oct->msix_entries = ((void*)0);
 }

 kfree(oct->irq_name_storage);
 oct->irq_name_storage = ((void*)0);

 if (octeon_allocate_ioq_vector(oct, num_ioqs)) {
  dev_err(&oct->pci_dev->dev, "OCTEON: ioq vector allocation failed\n");
  return -1;
 }

 if (octeon_setup_interrupt(oct, num_ioqs)) {
  dev_info(&oct->pci_dev->dev, "Setup interrupt failed\n");
  return -1;
 }


 oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

 return 0;
}
