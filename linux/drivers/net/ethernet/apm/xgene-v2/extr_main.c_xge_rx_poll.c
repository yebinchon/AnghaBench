
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef void* u16 ;
struct xge_raw_desc {int m2; int m0; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; int rx_errors; } ;
struct xge_pdata {int napi; TYPE_3__ stats; struct xge_desc_ring* rx_ring; TYPE_1__* pdev; } ;
struct xge_desc_ring {size_t head; TYPE_2__* pkt_info; struct xge_raw_desc* raw_desc; } ;
struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dma_addr; struct sk_buff* skb; } ;
struct TYPE_4__ {struct device dev; } ;


 int D ;
 int DMARXCTRL ;
 int DMARXSTATUS ;
 int DMA_FROM_DEVICE ;
 int E ;
 void* GET_BITS (int ,int ) ;
 int PKT_SIZE ;
 int RXPKTCOUNT ;
 int XGENE_ENET_NUM_DESC ;
 int XGENE_ENET_STD_MTU ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_rmb () ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le64_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int skb_put (struct sk_buff*,void*) ;
 scalar_t__ unlikely (size_t) ;
 int xge_rd_csr (struct xge_pdata*,int ) ;
 int xge_refill_buffers (struct net_device*,int) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static int xge_rx_poll(struct net_device *ndev, unsigned int budget)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct device *dev = &pdata->pdev->dev;
 struct xge_desc_ring *rx_ring;
 struct xge_raw_desc *raw_desc;
 struct sk_buff *skb;
 dma_addr_t dma_addr;
 int processed = 0;
 u8 head, rx_error;
 int i, ret;
 u32 data;
 u16 len;

 rx_ring = pdata->rx_ring;
 head = rx_ring->head;

 data = xge_rd_csr(pdata, DMARXSTATUS);
 if (!GET_BITS(RXPKTCOUNT, data))
  return 0;

 for (i = 0; i < budget; i++) {
  raw_desc = &rx_ring->raw_desc[head];

  if (GET_BITS(E, le64_to_cpu(raw_desc->m0)))
   break;

  dma_rmb();

  skb = rx_ring->pkt_info[head].skb;
  rx_ring->pkt_info[head].skb = ((void*)0);
  dma_addr = rx_ring->pkt_info[head].dma_addr;
  len = GET_BITS(PKT_SIZE, le64_to_cpu(raw_desc->m0));
  dma_unmap_single(dev, dma_addr, XGENE_ENET_STD_MTU,
     DMA_FROM_DEVICE);

  rx_error = GET_BITS(D, le64_to_cpu(raw_desc->m2));
  if (unlikely(rx_error)) {
   pdata->stats.rx_errors++;
   dev_kfree_skb_any(skb);
   goto out;
  }

  skb_put(skb, len);
  skb->protocol = eth_type_trans(skb, ndev);

  pdata->stats.rx_packets++;
  pdata->stats.rx_bytes += len;
  napi_gro_receive(&pdata->napi, skb);
out:
  ret = xge_refill_buffers(ndev, 1);
  xge_wr_csr(pdata, DMARXSTATUS, 1);
  xge_wr_csr(pdata, DMARXCTRL, 1);

  if (ret)
   break;

  head = (head + 1) & (XGENE_ENET_NUM_DESC - 1);
  processed++;
 }

 rx_ring->head = head;

 return processed;
}
