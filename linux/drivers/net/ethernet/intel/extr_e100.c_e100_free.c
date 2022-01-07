
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int * mem; int dma_addr; int pdev; } ;
struct mem {int dummy; } ;


 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void e100_free(struct nic *nic)
{
 if (nic->mem) {
  pci_free_consistent(nic->pdev, sizeof(struct mem),
   nic->mem, nic->dma_addr);
  nic->mem = ((void*)0);
 }
}
