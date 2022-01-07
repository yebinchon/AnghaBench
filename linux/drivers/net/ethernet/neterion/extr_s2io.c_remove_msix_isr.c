
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct s2io_nic {int num_entries; int pdev; TYPE_1__* s2io_entries; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ in_use; int vector; void* arg; } ;


 scalar_t__ MSIX_REGISTERED_SUCCESS ;
 int free_irq (int,void*) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_msix (int ) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_write_config_word (int ,int,int) ;

__attribute__((used)) static void remove_msix_isr(struct s2io_nic *sp)
{
 int i;
 u16 msi_control;

 for (i = 0; i < sp->num_entries; i++) {
  if (sp->s2io_entries[i].in_use == MSIX_REGISTERED_SUCCESS) {
   int vector = sp->entries[i].vector;
   void *arg = sp->s2io_entries[i].arg;
   free_irq(vector, arg);
  }
 }

 kfree(sp->entries);
 kfree(sp->s2io_entries);
 sp->entries = ((void*)0);
 sp->s2io_entries = ((void*)0);

 pci_read_config_word(sp->pdev, 0x42, &msi_control);
 msi_control &= 0xFFFE;
 pci_write_config_word(sp->pdev, 0x42, msi_control);

 pci_disable_msix(sp->pdev);
}
