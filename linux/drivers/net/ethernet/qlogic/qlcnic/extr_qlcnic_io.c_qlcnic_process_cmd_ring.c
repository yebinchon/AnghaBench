
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qlcnic_skb_frag {unsigned long long dma; int length; } ;
struct TYPE_2__ {int xmit_on; int xmit_finished; } ;
struct qlcnic_host_tx_ring {size_t sw_consumer; int tx_clean_lock; int * hw_consumer; TYPE_1__ tx_stats; int txq; int num_desc; struct qlcnic_cmd_buffer* cmd_buf_arr; } ;
struct qlcnic_cmd_buffer {int frag_count; int * skb; struct qlcnic_skb_frag* frag_array; } ;
struct qlcnic_adapter {scalar_t__ tx_timeo_cnt; struct net_device* netdev; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 scalar_t__ TX_STOP_THRESH ;
 int dev_kfree_skb_any (int *) ;
 size_t get_next_index (size_t,int ) ;
 size_t le32_to_cpu (int ) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (int ) ;
 int netif_tx_wake_queue (int ) ;
 int pci_unmap_page (struct pci_dev*,unsigned long long,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,unsigned long long,int ,int ) ;
 scalar_t__ qlcnic_tx_avail (struct qlcnic_host_tx_ring*) ;
 int smp_mb () ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int qlcnic_process_cmd_ring(struct qlcnic_adapter *adapter,
       struct qlcnic_host_tx_ring *tx_ring,
       int budget)
{
 u32 sw_consumer, hw_consumer;
 int i, done, count = 0;
 struct qlcnic_cmd_buffer *buffer;
 struct pci_dev *pdev = adapter->pdev;
 struct net_device *netdev = adapter->netdev;
 struct qlcnic_skb_frag *frag;

 if (!spin_trylock(&tx_ring->tx_clean_lock))
  return 1;

 sw_consumer = tx_ring->sw_consumer;
 hw_consumer = le32_to_cpu(*(tx_ring->hw_consumer));

 while (sw_consumer != hw_consumer) {
  buffer = &tx_ring->cmd_buf_arr[sw_consumer];
  if (buffer->skb) {
   frag = &buffer->frag_array[0];
   pci_unmap_single(pdev, frag->dma, frag->length,
      PCI_DMA_TODEVICE);
   frag->dma = 0ULL;
   for (i = 1; i < buffer->frag_count; i++) {
    frag++;
    pci_unmap_page(pdev, frag->dma, frag->length,
            PCI_DMA_TODEVICE);
    frag->dma = 0ULL;
   }
   tx_ring->tx_stats.xmit_finished++;
   dev_kfree_skb_any(buffer->skb);
   buffer->skb = ((void*)0);
  }

  sw_consumer = get_next_index(sw_consumer, tx_ring->num_desc);
  if (++count >= budget)
   break;
 }

 tx_ring->sw_consumer = sw_consumer;

 if (count && netif_running(netdev)) {
  smp_mb();
  if (netif_tx_queue_stopped(tx_ring->txq) &&
      netif_carrier_ok(netdev)) {
   if (qlcnic_tx_avail(tx_ring) > TX_STOP_THRESH) {
    netif_tx_wake_queue(tx_ring->txq);
    tx_ring->tx_stats.xmit_on++;
   }
  }
  adapter->tx_timeo_cnt = 0;
 }
 hw_consumer = le32_to_cpu(*(tx_ring->hw_consumer));
 done = (sw_consumer == hw_consumer);

 spin_unlock(&tx_ring->tx_clean_lock);

 return done;
}
