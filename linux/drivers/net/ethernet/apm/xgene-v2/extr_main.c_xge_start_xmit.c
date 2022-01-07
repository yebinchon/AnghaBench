
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u16 ;
struct xge_raw_desc {void* m0; void* m1; } ;
struct xge_pdata {struct xge_desc_ring* tx_ring; TYPE_1__* pdev; } ;
struct xge_desc_ring {size_t tail; TYPE_2__* pkt_info; struct xge_raw_desc* raw_desc; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {void* pkt_buf; int dma_addr; struct sk_buff* skb; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMATXCTRL ;
 int E ;
 int GET_BITS (int ,int ) ;
 int GFP_ATOMIC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NEXT_DESC_ADDRH ;
 int NEXT_DESC_ADDRL ;
 int PKT_ADDRH ;
 int PKT_ADDRL ;
 int PKT_SIZE ;
 int SET_BITS (int ,int ) ;
 int XGENE_ENET_NUM_DESC ;
 int XGENE_ENET_STD_MTU ;
 void* cpu_to_le64 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_wmb () ;
 int is_tx_slot_available (struct xge_raw_desc*) ;
 int le64_to_cpu (void*) ;
 int memcpy (void*,int ,int ) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_headlen (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int ) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static netdev_tx_t xge_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct device *dev = &pdata->pdev->dev;
 struct xge_desc_ring *tx_ring;
 struct xge_raw_desc *raw_desc;
 static dma_addr_t dma_addr;
 u64 addr_lo, addr_hi;
 void *pkt_buf;
 u8 tail;
 u16 len;

 tx_ring = pdata->tx_ring;
 tail = tx_ring->tail;
 len = skb_headlen(skb);
 raw_desc = &tx_ring->raw_desc[tail];

 if (!is_tx_slot_available(raw_desc)) {
  netif_stop_queue(ndev);
  return NETDEV_TX_BUSY;
 }


 pkt_buf = dma_alloc_coherent(dev, XGENE_ENET_STD_MTU, &dma_addr,
         GFP_ATOMIC);
 if (unlikely(!pkt_buf)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }
 memcpy(pkt_buf, skb->data, len);

 addr_hi = GET_BITS(NEXT_DESC_ADDRH, le64_to_cpu(raw_desc->m1));
 addr_lo = GET_BITS(NEXT_DESC_ADDRL, le64_to_cpu(raw_desc->m1));
 raw_desc->m1 = cpu_to_le64(SET_BITS(NEXT_DESC_ADDRL, addr_lo) |
       SET_BITS(NEXT_DESC_ADDRH, addr_hi) |
       SET_BITS(PKT_ADDRH,
         upper_32_bits(dma_addr)));

 tx_ring->pkt_info[tail].skb = skb;
 tx_ring->pkt_info[tail].dma_addr = dma_addr;
 tx_ring->pkt_info[tail].pkt_buf = pkt_buf;

 dma_wmb();

 raw_desc->m0 = cpu_to_le64(SET_BITS(PKT_ADDRL, dma_addr) |
       SET_BITS(PKT_SIZE, len) |
       SET_BITS(E, 0));
 skb_tx_timestamp(skb);
 xge_wr_csr(pdata, DMATXCTRL, 1);

 tx_ring->tail = (tail + 1) & (XGENE_ENET_NUM_DESC - 1);

 return NETDEV_TX_OK;
}
