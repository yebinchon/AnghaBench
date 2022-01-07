
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_adapter {int num_msix_vectors; int * msix_entries; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int MIN_MSIX_COUNT ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int pci_enable_msix_range (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static int
iavf_acquire_msix_vectors(struct iavf_adapter *adapter, int vectors)
{
 int err, vector_threshold;






 vector_threshold = MIN_MSIX_COUNT;






 err = pci_enable_msix_range(adapter->pdev, adapter->msix_entries,
        vector_threshold, vectors);
 if (err < 0) {
  dev_err(&adapter->pdev->dev, "Unable to allocate MSI-X interrupts\n");
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
  return err;
 }





 adapter->num_msix_vectors = err;
 return 0;
}
