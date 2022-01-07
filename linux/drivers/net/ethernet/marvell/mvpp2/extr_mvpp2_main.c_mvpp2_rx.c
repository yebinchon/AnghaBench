
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_5__ {int rx_errors; } ;
struct net_device {TYPE_3__ dev; TYPE_2__ stats; } ;
struct napi_struct {int dummy; } ;
struct mvpp2_rx_queue {int id; } ;
struct mvpp2_rx_desc {int dummy; } ;
struct mvpp2_port {int stats; struct net_device* dev; TYPE_1__* priv; } ;
struct mvpp2_pcpu_stats {int syncp; int rx_bytes; int rx_packets; } ;
struct mvpp2_bm_pool {unsigned int frag_size; int buf_size; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct mvpp2_bm_pool* bm_pools; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ MVPP2_MH_SIZE ;
 int MVPP2_RXD_BM_POOL_ID_MASK ;
 int MVPP2_RXD_BM_POOL_ID_OFFS ;
 int MVPP2_RXD_ERR_SUMMARY ;
 scalar_t__ NET_SKB_PAD ;
 unsigned int PAGE_SIZE ;
 struct sk_buff* build_skb (void*,unsigned int) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int mvpp2_bm_pool_put (struct mvpp2_port*,int,int ,int ) ;
 int mvpp2_rx_csum (struct mvpp2_port*,int,struct sk_buff*) ;
 int mvpp2_rx_error (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rx_refill (struct mvpp2_port*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_rxdesc_cookie_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_dma_addr_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_size_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_status_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 struct mvpp2_rx_desc* mvpp2_rxq_next_desc_get (struct mvpp2_rx_queue*) ;
 int mvpp2_rxq_received (struct mvpp2_port*,int ) ;
 int mvpp2_rxq_status_update (struct mvpp2_port*,int ,int,int) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ phys_to_virt (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct mvpp2_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int wmb () ;

__attribute__((used)) static int mvpp2_rx(struct mvpp2_port *port, struct napi_struct *napi,
      int rx_todo, struct mvpp2_rx_queue *rxq)
{
 struct net_device *dev = port->dev;
 int rx_received;
 int rx_done = 0;
 u32 rcvd_pkts = 0;
 u32 rcvd_bytes = 0;


 rx_received = mvpp2_rxq_received(port, rxq->id);
 if (rx_todo > rx_received)
  rx_todo = rx_received;

 while (rx_done < rx_todo) {
  struct mvpp2_rx_desc *rx_desc = mvpp2_rxq_next_desc_get(rxq);
  struct mvpp2_bm_pool *bm_pool;
  struct sk_buff *skb;
  unsigned int frag_size;
  dma_addr_t dma_addr;
  phys_addr_t phys_addr;
  u32 rx_status;
  int pool, rx_bytes, err;
  void *data;

  rx_done++;
  rx_status = mvpp2_rxdesc_status_get(port, rx_desc);
  rx_bytes = mvpp2_rxdesc_size_get(port, rx_desc);
  rx_bytes -= MVPP2_MH_SIZE;
  dma_addr = mvpp2_rxdesc_dma_addr_get(port, rx_desc);
  phys_addr = mvpp2_rxdesc_cookie_get(port, rx_desc);
  data = (void *)phys_to_virt(phys_addr);

  pool = (rx_status & MVPP2_RXD_BM_POOL_ID_MASK) >>
   MVPP2_RXD_BM_POOL_ID_OFFS;
  bm_pool = &port->priv->bm_pools[pool];






  if (rx_status & MVPP2_RXD_ERR_SUMMARY) {
err_drop_frame:
   dev->stats.rx_errors++;
   mvpp2_rx_error(port, rx_desc);

   mvpp2_bm_pool_put(port, pool, dma_addr, phys_addr);
   continue;
  }

  if (bm_pool->frag_size > PAGE_SIZE)
   frag_size = 0;
  else
   frag_size = bm_pool->frag_size;

  skb = build_skb(data, frag_size);
  if (!skb) {
   netdev_warn(port->dev, "skb build failed\n");
   goto err_drop_frame;
  }

  err = mvpp2_rx_refill(port, bm_pool, pool);
  if (err) {
   netdev_err(port->dev, "failed to refill BM pools\n");
   goto err_drop_frame;
  }

  dma_unmap_single(dev->dev.parent, dma_addr,
     bm_pool->buf_size, DMA_FROM_DEVICE);

  rcvd_pkts++;
  rcvd_bytes += rx_bytes;

  skb_reserve(skb, MVPP2_MH_SIZE + NET_SKB_PAD);
  skb_put(skb, rx_bytes);
  skb->protocol = eth_type_trans(skb, dev);
  mvpp2_rx_csum(port, rx_status, skb);

  napi_gro_receive(napi, skb);
 }

 if (rcvd_pkts) {
  struct mvpp2_pcpu_stats *stats = this_cpu_ptr(port->stats);

  u64_stats_update_begin(&stats->syncp);
  stats->rx_packets += rcvd_pkts;
  stats->rx_bytes += rcvd_bytes;
  u64_stats_update_end(&stats->syncp);
 }


 wmb();
 mvpp2_rxq_status_update(port, rxq->id, rx_done, rx_done);

 return rx_todo;
}
