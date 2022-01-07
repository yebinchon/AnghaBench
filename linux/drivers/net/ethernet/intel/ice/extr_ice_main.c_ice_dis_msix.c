
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {int * msix_entries; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int devm_kfree (int *,int *) ;
 int pci_disable_msix (TYPE_1__*) ;

__attribute__((used)) static void ice_dis_msix(struct ice_pf *pf)
{
 pci_disable_msix(pf->pdev);
 devm_kfree(&pf->pdev->dev, pf->msix_entries);
 pf->msix_entries = ((void*)0);
}
