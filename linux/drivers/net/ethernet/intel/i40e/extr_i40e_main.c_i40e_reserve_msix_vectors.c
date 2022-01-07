
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {TYPE_1__* pdev; int msix_entries; } ;
struct TYPE_2__ {int dev; } ;


 int I40E_MIN_MSIX ;
 int dev_info (int *,char*,int) ;
 int pci_enable_msix_range (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int i40e_reserve_msix_vectors(struct i40e_pf *pf, int vectors)
{
 vectors = pci_enable_msix_range(pf->pdev, pf->msix_entries,
     I40E_MIN_MSIX, vectors);
 if (vectors < 0) {
  dev_info(&pf->pdev->dev,
    "MSI-X vector reservation failed: %d\n", vectors);
  vectors = 0;
 }

 return vectors;
}
