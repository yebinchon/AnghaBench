
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct atl1_tpd_ring {size_t count; int next_to_clean; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {int * skb; scalar_t__ dma; int length; } ;
struct TYPE_4__ {TYPE_1__* cmb; } ;
struct atl1_adapter {int netdev; int pdev; TYPE_2__ cmb; struct atl1_tpd_ring tpd_ring; } ;
struct TYPE_3__ {int tpd_cons_idx; } ;


 int PCI_DMA_TODEVICE ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,size_t) ;
 int dev_consume_skb_irq (int *) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int atl1_intr_tx(struct atl1_adapter *adapter)
{
 struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
 struct atl1_buffer *buffer_info;
 u16 sw_tpd_next_to_clean;
 u16 cmb_tpd_next_to_clean;
 int count = 0;

 sw_tpd_next_to_clean = atomic_read(&tpd_ring->next_to_clean);
 cmb_tpd_next_to_clean = le16_to_cpu(adapter->cmb.cmb->tpd_cons_idx);

 while (cmb_tpd_next_to_clean != sw_tpd_next_to_clean) {
  buffer_info = &tpd_ring->buffer_info[sw_tpd_next_to_clean];
  if (buffer_info->dma) {
   pci_unmap_page(adapter->pdev, buffer_info->dma,
           buffer_info->length, PCI_DMA_TODEVICE);
   buffer_info->dma = 0;
  }

  if (buffer_info->skb) {
   dev_consume_skb_irq(buffer_info->skb);
   buffer_info->skb = ((void*)0);
  }

  if (++sw_tpd_next_to_clean == tpd_ring->count)
   sw_tpd_next_to_clean = 0;

  count++;
 }
 atomic_set(&tpd_ring->next_to_clean, sw_tpd_next_to_clean);

 if (netif_queue_stopped(adapter->netdev) &&
     netif_carrier_ok(adapter->netdev))
  netif_wake_queue(adapter->netdev);

 return count;
}
