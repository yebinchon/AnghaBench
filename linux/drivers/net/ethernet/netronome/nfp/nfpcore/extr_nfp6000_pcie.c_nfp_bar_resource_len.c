
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_bar {int index; TYPE_1__* nfp; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int pdev; } ;


 int pci_resource_len (int ,int) ;

__attribute__((used)) static resource_size_t nfp_bar_resource_len(struct nfp_bar *bar)
{
 return pci_resource_len(bar->nfp->pdev, (bar->index / 8) * 2) / 8;
}
