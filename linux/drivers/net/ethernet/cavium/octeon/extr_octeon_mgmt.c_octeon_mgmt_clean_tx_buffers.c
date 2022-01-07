
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tstamp; int len; int addr; } ;
union mgmt_port_ring_entry {TYPE_2__ s; int d64; } ;
struct TYPE_4__ {int orcnt; } ;
union cvmx_mixx_orcnt {void* u64; TYPE_1__ s; } ;
typedef void* u64 ;
typedef int ts ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int lock; } ;
struct octeon_mgmt {size_t tx_next_clean; int netdev; scalar_t__ mix; int port; int dev; TYPE_3__ tx_list; int tx_current_fill; int * tx_ring; int tx_ring_handle; } ;


 scalar_t__ CVMX_MIXX_TSCTL (int ) ;
 scalar_t__ CVMX_MIXX_TSTAMP (int ) ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 scalar_t__ MIX_ORCNT ;
 int OCTEON_MGMT_TX_RING_SIZE ;
 struct sk_buff* __skb_dequeue (TYPE_3__*) ;
 void* cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,void*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int ns_to_ktime (void*) ;
 int ring_size_to_bytes (int) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void octeon_mgmt_clean_tx_buffers(struct octeon_mgmt *p)
{
 union cvmx_mixx_orcnt mix_orcnt;
 union mgmt_port_ring_entry re;
 struct sk_buff *skb;
 int cleaned = 0;
 unsigned long flags;

 mix_orcnt.u64 = cvmx_read_csr(p->mix + MIX_ORCNT);
 while (mix_orcnt.s.orcnt) {
  spin_lock_irqsave(&p->tx_list.lock, flags);

  mix_orcnt.u64 = cvmx_read_csr(p->mix + MIX_ORCNT);

  if (mix_orcnt.s.orcnt == 0) {
   spin_unlock_irqrestore(&p->tx_list.lock, flags);
   break;
  }

  dma_sync_single_for_cpu(p->dev, p->tx_ring_handle,
     ring_size_to_bytes(OCTEON_MGMT_TX_RING_SIZE),
     DMA_BIDIRECTIONAL);

  re.d64 = p->tx_ring[p->tx_next_clean];
  p->tx_next_clean =
   (p->tx_next_clean + 1) % OCTEON_MGMT_TX_RING_SIZE;
  skb = __skb_dequeue(&p->tx_list);

  mix_orcnt.u64 = 0;
  mix_orcnt.s.orcnt = 1;


  cvmx_write_csr(p->mix + MIX_ORCNT, mix_orcnt.u64);
  p->tx_current_fill--;

  spin_unlock_irqrestore(&p->tx_list.lock, flags);

  dma_unmap_single(p->dev, re.s.addr, re.s.len,
     DMA_TO_DEVICE);


  if (unlikely(re.s.tstamp)) {
   struct skb_shared_hwtstamps ts;
   u64 ns;

   memset(&ts, 0, sizeof(ts));

   ns = cvmx_read_csr(CVMX_MIXX_TSTAMP(p->port));

   cvmx_write_csr(CVMX_MIXX_TSCTL(p->port), 0);

   ts.hwtstamp = ns_to_ktime(ns);
   skb_tstamp_tx(skb, &ts);
  }

  dev_kfree_skb_any(skb);
  cleaned++;

  mix_orcnt.u64 = cvmx_read_csr(p->mix + MIX_ORCNT);
 }

 if (cleaned && netif_queue_stopped(p->netdev))
  netif_wake_queue(p->netdev);
}
