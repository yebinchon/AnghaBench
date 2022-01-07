
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ cb; } ;
struct netcp_tx_cb {int ts_context; int (* txtstamp ) (int ,struct sk_buff*) ;} ;
struct netcp_stats {int syncp_tx; int tx_bytes; int tx_packets; int tx_errors; } ;
struct netcp_intf {scalar_t__ tx_resume_threshold; int ndev; int tx_pool; int ndev_dev; int tx_compl_q; struct netcp_stats stats; } ;
struct knav_dma_desc {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ GET_SW_DATA0 (struct knav_dma_desc*) ;
 int dev_err (int ,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ knav_pool_count (int ) ;
 struct knav_dma_desc* knav_pool_desc_unmap (int ,int ,unsigned int) ;
 int knav_queue_pop (int ,unsigned int*) ;
 int netcp_free_tx_desc_chain (struct netcp_intf*,struct knav_dma_desc*,unsigned int) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ netif_subqueue_stopped (int ,struct sk_buff*) ;
 int netif_wake_subqueue (int ,int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int netcp_process_tx_compl_packets(struct netcp_intf *netcp,
       unsigned int budget)
{
 struct netcp_stats *tx_stats = &netcp->stats;
 struct knav_dma_desc *desc;
 struct netcp_tx_cb *tx_cb;
 struct sk_buff *skb;
 unsigned int dma_sz;
 dma_addr_t dma;
 int pkts = 0;

 while (budget--) {
  dma = knav_queue_pop(netcp->tx_compl_q, &dma_sz);
  if (!dma)
   break;
  desc = knav_pool_desc_unmap(netcp->tx_pool, dma, dma_sz);
  if (unlikely(!desc)) {
   dev_err(netcp->ndev_dev, "failed to unmap Tx desc\n");
   tx_stats->tx_errors++;
   continue;
  }




  skb = (struct sk_buff *)GET_SW_DATA0(desc);
  netcp_free_tx_desc_chain(netcp, desc, dma_sz);
  if (!skb) {
   dev_err(netcp->ndev_dev, "No skb in Tx desc\n");
   tx_stats->tx_errors++;
   continue;
  }

  tx_cb = (struct netcp_tx_cb *)skb->cb;
  if (tx_cb->txtstamp)
   tx_cb->txtstamp(tx_cb->ts_context, skb);

  if (netif_subqueue_stopped(netcp->ndev, skb) &&
      netif_running(netcp->ndev) &&
      (knav_pool_count(netcp->tx_pool) >
      netcp->tx_resume_threshold)) {
   u16 subqueue = skb_get_queue_mapping(skb);

   netif_wake_subqueue(netcp->ndev, subqueue);
  }

  u64_stats_update_begin(&tx_stats->syncp_tx);
  tx_stats->tx_packets++;
  tx_stats->tx_bytes += skb->len;
  u64_stats_update_end(&tx_stats->syncp_tx);
  dev_kfree_skb(skb);
  pkts++;
 }
 return pkts;
}
