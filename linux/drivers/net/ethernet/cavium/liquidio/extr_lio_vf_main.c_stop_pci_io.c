
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {int ifcount; int num_msix_irqs; TYPE_3__* pci_dev; int status; int * msix_entries; int * ioq_vector; scalar_t__ msix_on; TYPE_2__ fn_list; TYPE_1__* props; } ;
struct msix_entry {int vector; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int netdev; } ;


 int OCTEON_ALL_INTR ;
 int OCT_DEV_IN_RESET ;
 int atomic_set (int *,int ) ;
 int cleanup_aer_uncorrect_error_status (TYPE_3__*) ;
 int dev_dbg (int *,char*,int ) ;
 int free_irq (int ,int *) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (int *) ;
 int lio_get_state_string (int *) ;
 int netif_device_detach (int ) ;
 int octeon_free_ioq_vector (struct octeon_device*) ;
 int pci_disable_device (TYPE_3__*) ;
 int pci_disable_msix (TYPE_3__*) ;
 int pcierror_quiesce_device (struct octeon_device*) ;
 int stub1 (struct octeon_device*,int ) ;

__attribute__((used)) static void stop_pci_io(struct octeon_device *oct)
{
 struct msix_entry *msix_entries;
 int i;


 atomic_set(&oct->status, OCT_DEV_IN_RESET);

 for (i = 0; i < oct->ifcount; i++)
  netif_device_detach(oct->props[i].netdev);


 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 pcierror_quiesce_device(oct);
 if (oct->msix_on) {
  msix_entries = (struct msix_entry *)oct->msix_entries;
  for (i = 0; i < oct->num_msix_irqs; i++) {

   irq_set_affinity_hint(msix_entries[i].vector,
           ((void*)0));
   free_irq(msix_entries[i].vector,
     &oct->ioq_vector[i]);
  }
  pci_disable_msix(oct->pci_dev);
  kfree(oct->msix_entries);
  oct->msix_entries = ((void*)0);
  octeon_free_ioq_vector(oct);
 }
 dev_dbg(&oct->pci_dev->dev, "Device state is now %s\n",
  lio_get_state_string(&oct->status));


 cleanup_aer_uncorrect_error_status(oct->pci_dev);

 pci_disable_device(oct->pci_dev);
}
