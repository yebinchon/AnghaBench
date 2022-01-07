
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mapaddr; } ;
struct mlxsw_pci_queue {TYPE_1__ mem_item; } ;
typedef scalar_t__ dma_addr_t ;


 int MLXSW_PCI_PAGE_SIZE ;

__attribute__((used)) static dma_addr_t __mlxsw_pci_queue_page_get(struct mlxsw_pci_queue *q,
          int page_index)
{
 return q->mem_item.mapaddr + MLXSW_PCI_PAGE_SIZE * page_index;
}
