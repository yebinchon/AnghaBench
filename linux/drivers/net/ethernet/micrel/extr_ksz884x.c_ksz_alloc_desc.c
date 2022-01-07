
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct ksz_hw_desc {int dummy; } ;
struct TYPE_4__ {int size; int alloc; scalar_t__ ring_phys; struct ksz_hw_desc* ring_virt; } ;
struct ksz_hw {TYPE_2__ tx_desc_info; TYPE_2__ rx_desc_info; } ;
struct TYPE_3__ {int alloc_size; scalar_t__ phys; int * virt; scalar_t__ dma_addr; int * alloc_virt; } ;
struct dev_info {TYPE_1__ desc_pool; int pdev; struct ksz_hw hw; } ;


 int DESC_ALIGNMENT ;
 scalar_t__ ksz_alloc_soft_desc (TYPE_2__*,int) ;
 int * pci_zalloc_consistent (int ,int,scalar_t__*) ;

__attribute__((used)) static int ksz_alloc_desc(struct dev_info *adapter)
{
 struct ksz_hw *hw = &adapter->hw;
 int offset;


 adapter->desc_pool.alloc_size =
  hw->rx_desc_info.size * hw->rx_desc_info.alloc +
  hw->tx_desc_info.size * hw->tx_desc_info.alloc +
  DESC_ALIGNMENT;

 adapter->desc_pool.alloc_virt =
  pci_zalloc_consistent(adapter->pdev,
          adapter->desc_pool.alloc_size,
          &adapter->desc_pool.dma_addr);
 if (adapter->desc_pool.alloc_virt == ((void*)0)) {
  adapter->desc_pool.alloc_size = 0;
  return 1;
 }


 offset = (((ulong) adapter->desc_pool.alloc_virt % DESC_ALIGNMENT) ?
  (DESC_ALIGNMENT -
  ((ulong) adapter->desc_pool.alloc_virt % DESC_ALIGNMENT)) : 0);
 adapter->desc_pool.virt = adapter->desc_pool.alloc_virt + offset;
 adapter->desc_pool.phys = adapter->desc_pool.dma_addr + offset;


 hw->rx_desc_info.ring_virt = (struct ksz_hw_desc *)
  adapter->desc_pool.virt;
 hw->rx_desc_info.ring_phys = adapter->desc_pool.phys;
 offset = hw->rx_desc_info.alloc * hw->rx_desc_info.size;
 hw->tx_desc_info.ring_virt = (struct ksz_hw_desc *)
  (adapter->desc_pool.virt + offset);
 hw->tx_desc_info.ring_phys = adapter->desc_pool.phys + offset;

 if (ksz_alloc_soft_desc(&hw->rx_desc_info, 0))
  return 1;
 if (ksz_alloc_soft_desc(&hw->tx_desc_info, 1))
  return 1;

 return 0;
}
