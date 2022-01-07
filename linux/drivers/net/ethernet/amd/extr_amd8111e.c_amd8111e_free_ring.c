
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111e_tx_dr {int dummy; } ;
struct amd8111e_rx_dr {int dummy; } ;
struct amd8111e_priv {int * tx_ring; int tx_ring_dma_addr; int pci_dev; int * rx_ring; int rx_ring_dma_addr; } ;


 int NUM_RX_RING_DR ;
 int NUM_TX_RING_DR ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void amd8111e_free_ring(struct amd8111e_priv *lp)
{

 if(lp->rx_ring){
  pci_free_consistent(lp->pci_dev,
   sizeof(struct amd8111e_rx_dr)*NUM_RX_RING_DR,
   lp->rx_ring, lp->rx_ring_dma_addr);
  lp->rx_ring = ((void*)0);
 }

 if(lp->tx_ring){
  pci_free_consistent(lp->pci_dev,
   sizeof(struct amd8111e_tx_dr)*NUM_TX_RING_DR,
   lp->tx_ring, lp->tx_ring_dma_addr);

  lp->tx_ring = ((void*)0);
 }

}
