
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {int flags; TYPE_2__* pci_dev; int status; TYPE_1__ fn_list; } ;
struct TYPE_6__ {int dev; int irq; } ;


 int LIO_FLAG_MSI_ENABLED ;
 int OCTEON_ALL_INTR ;
 int OCT_DEV_IN_RESET ;
 int atomic_set (int *,int ) ;
 int cleanup_aer_uncorrect_error_status (TYPE_2__*) ;
 int dev_dbg (int *,char*,int ) ;
 int free_irq (int ,struct octeon_device*) ;
 int lio_get_state_string (int *) ;
 int pci_disable_device (TYPE_2__*) ;
 int pci_disable_msi (TYPE_2__*) ;
 int pcierror_quiesce_device (struct octeon_device*) ;
 int stub1 (struct octeon_device*,int ) ;

__attribute__((used)) static void stop_pci_io(struct octeon_device *oct)
{

 atomic_set(&oct->status, OCT_DEV_IN_RESET);

 pci_disable_device(oct->pci_dev);


 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 pcierror_quiesce_device(oct);


 free_irq(oct->pci_dev->irq, oct);

 if (oct->flags & LIO_FLAG_MSI_ENABLED)
  pci_disable_msi(oct->pci_dev);

 dev_dbg(&oct->pci_dev->dev, "Device state is now %s\n",
  lio_get_state_string(&oct->status));


 cleanup_aer_uncorrect_error_status(oct->pci_dev);
}
