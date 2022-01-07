
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_info {int dummy; } ;
struct sky2_tx_le {int dummy; } ;
struct sky2_port {int tx_ring_size; int rx_pending; void* rx_ring; int rx_le; int rx_le_map; void* tx_ring; int tx_le; int tx_le_map; struct sky2_hw* hw; } ;
struct sky2_hw {int pdev; } ;
struct rx_ring_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_LE_BYTES ;
 void* kcalloc (int,int,int ) ;
 int pci_alloc_consistent (int ,int,int *) ;
 int pci_zalloc_consistent (int ,int ,int *) ;
 int sky2_alloc_rx_skbs (struct sky2_port*) ;

__attribute__((used)) static int sky2_alloc_buffers(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;


 sky2->tx_le = pci_alloc_consistent(hw->pdev,
        sky2->tx_ring_size *
        sizeof(struct sky2_tx_le),
        &sky2->tx_le_map);
 if (!sky2->tx_le)
  goto nomem;

 sky2->tx_ring = kcalloc(sky2->tx_ring_size, sizeof(struct tx_ring_info),
    GFP_KERNEL);
 if (!sky2->tx_ring)
  goto nomem;

 sky2->rx_le = pci_zalloc_consistent(hw->pdev, RX_LE_BYTES,
         &sky2->rx_le_map);
 if (!sky2->rx_le)
  goto nomem;

 sky2->rx_ring = kcalloc(sky2->rx_pending, sizeof(struct rx_ring_info),
    GFP_KERNEL);
 if (!sky2->rx_ring)
  goto nomem;

 return sky2_alloc_rx_skbs(sky2);
nomem:
 return -ENOMEM;
}
