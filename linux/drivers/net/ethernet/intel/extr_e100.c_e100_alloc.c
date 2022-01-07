
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {scalar_t__ mem; int dma_addr; int pdev; } ;
struct mem {int dummy; } ;


 int ENOMEM ;
 scalar_t__ pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int e100_alloc(struct nic *nic)
{
 nic->mem = pci_alloc_consistent(nic->pdev, sizeof(struct mem),
  &nic->dma_addr);
 return nic->mem ? 0 : -ENOMEM;
}
