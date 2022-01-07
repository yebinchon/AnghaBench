
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct net_device {int dummy; } ;
struct event {int dummy; } ;
struct ace_private {void* rx_std_ring; void* evt_ring; void* tx_ring; int * tx_csm; int tx_csm_dma; int pdev; int * rx_ret_prd; int rx_ret_prd_dma; int * evt_prd; int evt_prd_dma; int tx_ring_dma; int evt_ring_dma; int * rx_return_ring; int * rx_mini_ring; int * rx_jumbo_ring; int rx_ring_base_dma; } ;


 int ACE_IS_TIGON_I (struct ace_private*) ;
 int EVT_RING_ENTRIES ;
 int MAX_TX_RING_ENTRIES ;
 int RX_JUMBO_RING_ENTRIES ;
 int RX_MINI_RING_ENTRIES ;
 int RX_RETURN_RING_ENTRIES ;
 int RX_STD_RING_ENTRIES ;
 struct ace_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,int,void*,int ) ;

__attribute__((used)) static void ace_free_descriptors(struct net_device *dev)
{
 struct ace_private *ap = netdev_priv(dev);
 int size;

 if (ap->rx_std_ring != ((void*)0)) {
  size = (sizeof(struct rx_desc) *
   (RX_STD_RING_ENTRIES +
    RX_JUMBO_RING_ENTRIES +
    RX_MINI_RING_ENTRIES +
    RX_RETURN_RING_ENTRIES));
  pci_free_consistent(ap->pdev, size, ap->rx_std_ring,
        ap->rx_ring_base_dma);
  ap->rx_std_ring = ((void*)0);
  ap->rx_jumbo_ring = ((void*)0);
  ap->rx_mini_ring = ((void*)0);
  ap->rx_return_ring = ((void*)0);
 }
 if (ap->evt_ring != ((void*)0)) {
  size = (sizeof(struct event) * EVT_RING_ENTRIES);
  pci_free_consistent(ap->pdev, size, ap->evt_ring,
        ap->evt_ring_dma);
  ap->evt_ring = ((void*)0);
 }
 if (ap->tx_ring != ((void*)0) && !ACE_IS_TIGON_I(ap)) {
  size = (sizeof(struct tx_desc) * MAX_TX_RING_ENTRIES);
  pci_free_consistent(ap->pdev, size, ap->tx_ring,
        ap->tx_ring_dma);
 }
 ap->tx_ring = ((void*)0);

 if (ap->evt_prd != ((void*)0)) {
  pci_free_consistent(ap->pdev, sizeof(u32),
        (void *)ap->evt_prd, ap->evt_prd_dma);
  ap->evt_prd = ((void*)0);
 }
 if (ap->rx_ret_prd != ((void*)0)) {
  pci_free_consistent(ap->pdev, sizeof(u32),
        (void *)ap->rx_ret_prd,
        ap->rx_ret_prd_dma);
  ap->rx_ret_prd = ((void*)0);
 }
 if (ap->tx_csm != ((void*)0)) {
  pci_free_consistent(ap->pdev, sizeof(u32),
        (void *)ap->tx_csm, ap->tx_csm_dma);
  ap->tx_csm = ((void*)0);
 }
}
