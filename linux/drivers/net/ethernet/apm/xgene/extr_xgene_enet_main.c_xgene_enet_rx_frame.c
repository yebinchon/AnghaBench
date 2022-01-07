
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct xgene_enet_raw_desc {int m0; int m1; } ;
struct xgene_enet_pdata {int vlan_rjbr; int false_rflr; } ;
struct xgene_enet_desc_ring {size_t slots; size_t head; scalar_t__ npagepool; scalar_t__ nbufpool; int napi; int rx_bytes; int rx_packets; struct page** frag_page; int rx_dropped; struct sk_buff** rx_skb; struct xgene_enet_desc_ring* page_pool; struct xgene_enet_desc_ring* buf_pool; struct net_device* ndev; } ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le64 ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 int DATAADDR ;
 int DMA_FROM_DEVICE ;
 int ELERR ;
 int GET_VAL (int ,int ) ;
 int LERR ;
 int LERR_LEN ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ NUM_BUFPOOL ;
 scalar_t__ NUM_NXTBUFPOOL ;
 int NV ;
 int PAGE_SIZE ;
 int USERINFO ;
 int XGENE_ENET_STD_MTU ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (struct device*,int,int ,int ) ;
 int dma_unmap_single (struct device*,int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le64_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct device* ndev_to_dev (struct net_device*) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int prefetch (scalar_t__) ;
 int skb_add_rx_frag (struct sk_buff*,scalar_t__,struct page*,int ,size_t,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,size_t) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xgene_enet_errata_10GE_10 (struct sk_buff*,size_t,int) ;
 scalar_t__ xgene_enet_errata_10GE_8 (struct sk_buff*,size_t,int) ;
 int xgene_enet_free_pagepool (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*,struct xgene_enet_raw_desc*) ;
 size_t xgene_enet_get_data_len (int ) ;
 int xgene_enet_parse_error (struct xgene_enet_desc_ring*,int) ;
 int xgene_enet_refill_bufpool (struct xgene_enet_desc_ring*,scalar_t__) ;
 int xgene_enet_refill_pagepool (struct xgene_enet_desc_ring*,scalar_t__) ;
 int xgene_enet_rx_csum (struct sk_buff*) ;

__attribute__((used)) static int xgene_enet_rx_frame(struct xgene_enet_desc_ring *rx_ring,
          struct xgene_enet_raw_desc *raw_desc,
          struct xgene_enet_raw_desc *exp_desc)
{
 struct xgene_enet_desc_ring *buf_pool, *page_pool;
 u32 datalen, frag_size, skb_index;
 struct xgene_enet_pdata *pdata;
 struct net_device *ndev;
 dma_addr_t dma_addr;
 struct sk_buff *skb;
 struct device *dev;
 struct page *page;
 u16 slots, head;
 int i, ret = 0;
 __le64 *desc;
 u8 status;
 bool nv;

 ndev = rx_ring->ndev;
 pdata = netdev_priv(ndev);
 dev = ndev_to_dev(rx_ring->ndev);
 buf_pool = rx_ring->buf_pool;
 page_pool = rx_ring->page_pool;

 dma_unmap_single(dev, GET_VAL(DATAADDR, le64_to_cpu(raw_desc->m1)),
    XGENE_ENET_STD_MTU, DMA_FROM_DEVICE);
 skb_index = GET_VAL(USERINFO, le64_to_cpu(raw_desc->m0));
 skb = buf_pool->rx_skb[skb_index];
 buf_pool->rx_skb[skb_index] = ((void*)0);

 datalen = xgene_enet_get_data_len(le64_to_cpu(raw_desc->m1));
 skb_put(skb, datalen);
 prefetch(skb->data - NET_IP_ALIGN);
 skb->protocol = eth_type_trans(skb, ndev);


 status = (GET_VAL(ELERR, le64_to_cpu(raw_desc->m0)) << LERR_LEN) |
    GET_VAL(LERR, le64_to_cpu(raw_desc->m0));
 if (unlikely(status)) {
  if (xgene_enet_errata_10GE_8(skb, datalen, status)) {
   pdata->false_rflr++;
  } else if (xgene_enet_errata_10GE_10(skb, datalen, status)) {
   pdata->vlan_rjbr++;
  } else {
   dev_kfree_skb_any(skb);
   xgene_enet_free_pagepool(page_pool, raw_desc, exp_desc);
   xgene_enet_parse_error(rx_ring, status);
   rx_ring->rx_dropped++;
   goto out;
  }
 }

 nv = GET_VAL(NV, le64_to_cpu(raw_desc->m0));
 if (!nv) {

  datalen -= 4;
  goto skip_jumbo;
 }

 slots = page_pool->slots - 1;
 head = page_pool->head;
 desc = (void *)exp_desc;

 for (i = 0; i < 4; i++) {
  frag_size = xgene_enet_get_data_len(le64_to_cpu(desc[i ^ 1]));
  if (!frag_size)
   break;

  dma_addr = GET_VAL(DATAADDR, le64_to_cpu(desc[i ^ 1]));
  dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);

  page = page_pool->frag_page[head];
  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page, 0,
    frag_size, PAGE_SIZE);

  datalen += frag_size;

  page_pool->frag_page[head] = ((void*)0);
  head = (head + 1) & slots;
 }

 page_pool->head = head;
 rx_ring->npagepool -= skb_shinfo(skb)->nr_frags;

skip_jumbo:
 skb_checksum_none_assert(skb);
 xgene_enet_rx_csum(skb);

 rx_ring->rx_packets++;
 rx_ring->rx_bytes += datalen;
 napi_gro_receive(&rx_ring->napi, skb);

out:
 if (rx_ring->npagepool <= 0) {
  ret = xgene_enet_refill_pagepool(page_pool, NUM_NXTBUFPOOL);
  rx_ring->npagepool = NUM_NXTBUFPOOL;
  if (ret)
   return ret;
 }

 if (--rx_ring->nbufpool == 0) {
  ret = xgene_enet_refill_bufpool(buf_pool, NUM_BUFPOOL);
  rx_ring->nbufpool = NUM_BUFPOOL;
 }

 return ret;
}
