
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_tx_le {int dummy; } ;
struct sky2_port {int tx_ring_size; int * rx_ring; int * tx_ring; int * tx_le; int tx_le_map; int * rx_le; int rx_le_map; struct sky2_hw* hw; } ;
struct sky2_hw {int pdev; } ;


 int RX_LE_BYTES ;
 int kfree (int *) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int sky2_rx_clean (struct sky2_port*) ;

__attribute__((used)) static void sky2_free_buffers(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;

 sky2_rx_clean(sky2);

 if (sky2->rx_le) {
  pci_free_consistent(hw->pdev, RX_LE_BYTES,
        sky2->rx_le, sky2->rx_le_map);
  sky2->rx_le = ((void*)0);
 }
 if (sky2->tx_le) {
  pci_free_consistent(hw->pdev,
        sky2->tx_ring_size * sizeof(struct sky2_tx_le),
        sky2->tx_le, sky2->tx_le_map);
  sky2->tx_le = ((void*)0);
 }
 kfree(sky2->tx_ring);
 kfree(sky2->rx_ring);

 sky2->tx_ring = ((void*)0);
 sky2->rx_ring = ((void*)0);
}
