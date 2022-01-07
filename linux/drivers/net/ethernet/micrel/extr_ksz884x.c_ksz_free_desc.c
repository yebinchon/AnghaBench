
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * ring; scalar_t__ ring_phys; int * ring_virt; } ;
struct TYPE_5__ {int * ring; scalar_t__ ring_phys; int * ring_virt; } ;
struct ksz_hw {TYPE_3__ tx_desc_info; TYPE_2__ rx_desc_info; } ;
struct TYPE_4__ {int * alloc_virt; scalar_t__ alloc_size; int dma_addr; } ;
struct dev_info {TYPE_1__ desc_pool; int pdev; struct ksz_hw hw; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static void ksz_free_desc(struct dev_info *adapter)
{
 struct ksz_hw *hw = &adapter->hw;


 hw->rx_desc_info.ring_virt = ((void*)0);
 hw->tx_desc_info.ring_virt = ((void*)0);
 hw->rx_desc_info.ring_phys = 0;
 hw->tx_desc_info.ring_phys = 0;


 if (adapter->desc_pool.alloc_virt)
  pci_free_consistent(
   adapter->pdev,
   adapter->desc_pool.alloc_size,
   adapter->desc_pool.alloc_virt,
   adapter->desc_pool.dma_addr);


 adapter->desc_pool.alloc_size = 0;
 adapter->desc_pool.alloc_virt = ((void*)0);

 kfree(hw->rx_desc_info.ring);
 hw->rx_desc_info.ring = ((void*)0);
 kfree(hw->tx_desc_info.ring);
 hw->tx_desc_info.ring = ((void*)0);
}
