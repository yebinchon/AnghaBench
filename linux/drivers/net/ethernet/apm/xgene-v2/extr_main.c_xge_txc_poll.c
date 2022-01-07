
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct xge_raw_desc {int m0; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct xge_pdata {TYPE_3__ stats; struct xge_desc_ring* tx_ring; TYPE_1__* pdev; } ;
struct xge_desc_ring {size_t head; TYPE_2__* pkt_info; struct xge_raw_desc* raw_desc; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {void* pkt_buf; int dma_addr; struct sk_buff* skb; } ;
struct TYPE_4__ {struct device dev; } ;


 int DMATXSTATUS ;
 int E ;
 int GET_BITS (int ,int ) ;
 int PKT_SIZE ;
 int SET_BITS (int ,int) ;
 int SLOT_EMPTY ;
 int TXPKTCOUNT ;
 int XGENE_ENET_NUM_DESC ;
 int XGENE_ENET_STD_MTU ;
 int cpu_to_le64 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_free_coherent (struct device*,int ,void*,int ) ;
 int dma_rmb () ;
 int is_tx_hw_done (struct xge_raw_desc*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int xge_rd_csr (struct xge_pdata*,int ) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static void xge_txc_poll(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct device *dev = &pdata->pdev->dev;
 struct xge_desc_ring *tx_ring;
 struct xge_raw_desc *raw_desc;
 dma_addr_t dma_addr;
 struct sk_buff *skb;
 void *pkt_buf;
 u32 data;
 u8 head;

 tx_ring = pdata->tx_ring;
 head = tx_ring->head;

 data = xge_rd_csr(pdata, DMATXSTATUS);
 if (!GET_BITS(TXPKTCOUNT, data))
  return;

 while (1) {
  raw_desc = &tx_ring->raw_desc[head];

  if (!is_tx_hw_done(raw_desc))
   break;

  dma_rmb();

  skb = tx_ring->pkt_info[head].skb;
  dma_addr = tx_ring->pkt_info[head].dma_addr;
  pkt_buf = tx_ring->pkt_info[head].pkt_buf;
  pdata->stats.tx_packets++;
  pdata->stats.tx_bytes += skb->len;
  dma_free_coherent(dev, XGENE_ENET_STD_MTU, pkt_buf, dma_addr);
  dev_kfree_skb_any(skb);


  raw_desc->m0 = cpu_to_le64(SET_BITS(E, 1) |
        SET_BITS(PKT_SIZE, SLOT_EMPTY));
  xge_wr_csr(pdata, DMATXSTATUS, 1);

  head = (head + 1) & (XGENE_ENET_NUM_DESC - 1);
 }

 if (netif_queue_stopped(ndev))
  netif_wake_queue(ndev);

 tx_ring->head = head;
}
