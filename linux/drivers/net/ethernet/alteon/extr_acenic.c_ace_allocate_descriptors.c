
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct net_device {int dummy; } ;
struct event {int dummy; } ;
struct ace_private {int * tx_csm; int tx_csm_dma; int pdev; int * rx_ret_prd; int rx_ret_prd_dma; int * evt_prd; int evt_prd_dma; int * tx_ring; int tx_ring_dma; int * evt_ring; int evt_ring_dma; int * rx_mini_ring; int * rx_return_ring; int * rx_jumbo_ring; int * rx_std_ring; int rx_ring_base_dma; } ;


 int ACE_IS_TIGON_I (struct ace_private*) ;
 int EVT_RING_ENTRIES ;
 int MAX_TX_RING_ENTRIES ;
 int RX_JUMBO_RING_ENTRIES ;
 int RX_MINI_RING_ENTRIES ;
 int RX_RETURN_RING_ENTRIES ;
 int RX_STD_RING_ENTRIES ;
 int ace_init_cleanup (struct net_device*) ;
 struct ace_private* netdev_priv (struct net_device*) ;
 void* pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int ace_allocate_descriptors(struct net_device *dev)
{
 struct ace_private *ap = netdev_priv(dev);
 int size;

 size = (sizeof(struct rx_desc) *
  (RX_STD_RING_ENTRIES +
   RX_JUMBO_RING_ENTRIES +
   RX_MINI_RING_ENTRIES +
   RX_RETURN_RING_ENTRIES));

 ap->rx_std_ring = pci_alloc_consistent(ap->pdev, size,
            &ap->rx_ring_base_dma);
 if (ap->rx_std_ring == ((void*)0))
  goto fail;

 ap->rx_jumbo_ring = ap->rx_std_ring + RX_STD_RING_ENTRIES;
 ap->rx_mini_ring = ap->rx_jumbo_ring + RX_JUMBO_RING_ENTRIES;
 ap->rx_return_ring = ap->rx_mini_ring + RX_MINI_RING_ENTRIES;

 size = (sizeof(struct event) * EVT_RING_ENTRIES);

 ap->evt_ring = pci_alloc_consistent(ap->pdev, size, &ap->evt_ring_dma);

 if (ap->evt_ring == ((void*)0))
  goto fail;





 if (!ACE_IS_TIGON_I(ap)) {
  size = (sizeof(struct tx_desc) * MAX_TX_RING_ENTRIES);

  ap->tx_ring = pci_alloc_consistent(ap->pdev, size,
         &ap->tx_ring_dma);

  if (ap->tx_ring == ((void*)0))
   goto fail;
 }

 ap->evt_prd = pci_alloc_consistent(ap->pdev, sizeof(u32),
        &ap->evt_prd_dma);
 if (ap->evt_prd == ((void*)0))
  goto fail;

 ap->rx_ret_prd = pci_alloc_consistent(ap->pdev, sizeof(u32),
           &ap->rx_ret_prd_dma);
 if (ap->rx_ret_prd == ((void*)0))
  goto fail;

 ap->tx_csm = pci_alloc_consistent(ap->pdev, sizeof(u32),
       &ap->tx_csm_dma);
 if (ap->tx_csm == ((void*)0))
  goto fail;

 return 0;

fail:

 ace_init_cleanup(dev);
 return 1;
}
