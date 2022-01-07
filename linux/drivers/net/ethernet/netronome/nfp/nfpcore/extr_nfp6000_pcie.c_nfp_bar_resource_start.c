
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_bar {int index; TYPE_1__* nfp; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {int pdev; } ;


 int nfp_bar_resource_len (struct nfp_bar*) ;
 scalar_t__ pci_resource_start (int ,int) ;

__attribute__((used)) static resource_size_t nfp_bar_resource_start(struct nfp_bar *bar)
{
 return pci_resource_start(bar->nfp->pdev, (bar->index / 8) * 2)
  + nfp_bar_resource_len(bar) * (bar->index & 7);
}
