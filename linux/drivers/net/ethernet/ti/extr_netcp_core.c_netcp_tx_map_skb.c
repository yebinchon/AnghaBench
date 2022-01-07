
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct sk_buff {unsigned int len; int data; } ;
struct page {int dummy; } ;
struct netcp_intf {int ndev_dev; int tx_pool; struct device* dev; } ;
struct knav_dma_desc {scalar_t__ desc_info; scalar_t__ next_desc; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int nr_frags; scalar_t__ frag_list; int * frags; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ IS_ERR_OR_NULL (struct knav_dma_desc*) ;
 unsigned int KNAV_DMA_DESC_PKT_LEN_MASK ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int dev_err_ratelimited (int ,char*) ;
 scalar_t__ dma_map_page (struct device*,struct page*,unsigned int,unsigned int,int ) ;
 scalar_t__ dma_map_single (struct device*,int ,unsigned int,int ) ;
 int dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_page (struct device*,scalar_t__,unsigned int,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,unsigned int,int ) ;
 struct knav_dma_desc* knav_pool_desc_get (int ) ;
 int knav_pool_desc_map (int ,struct knav_dma_desc*,int,scalar_t__*,unsigned int*) ;
 scalar_t__ knav_pool_desc_virt_to_dma (int ,struct knav_dma_desc*) ;
 int netcp_free_tx_desc_chain (struct netcp_intf*,struct knav_dma_desc*,int) ;
 int prefetchw (TYPE_1__*) ;
 int set_pkt_info (scalar_t__,unsigned int,int ,struct knav_dma_desc*) ;
 int set_words (unsigned int*,int,scalar_t__*) ;
 unsigned int skb_frag_off (int *) ;
 struct page* skb_frag_page (int *) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct knav_dma_desc*
netcp_tx_map_skb(struct sk_buff *skb, struct netcp_intf *netcp)
{
 struct knav_dma_desc *desc, *ndesc, *pdesc;
 unsigned int pkt_len = skb_headlen(skb);
 struct device *dev = netcp->dev;
 dma_addr_t dma_addr;
 unsigned int dma_sz;
 int i;


 dma_addr = dma_map_single(dev, skb->data, pkt_len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(dev, dma_addr))) {
  dev_err(netcp->ndev_dev, "Failed to map skb buffer\n");
  return ((void*)0);
 }

 desc = knav_pool_desc_get(netcp->tx_pool);
 if (IS_ERR_OR_NULL(desc)) {
  dev_err(netcp->ndev_dev, "out of TX desc\n");
  dma_unmap_single(dev, dma_addr, pkt_len, DMA_TO_DEVICE);
  return ((void*)0);
 }

 set_pkt_info(dma_addr, pkt_len, 0, desc);
 if (skb_is_nonlinear(skb)) {
  prefetchw(skb_shinfo(skb));
 } else {
  desc->next_desc = 0;
  goto upd_pkt_len;
 }

 pdesc = desc;


 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  struct page *page = skb_frag_page(frag);
  u32 page_offset = skb_frag_off(frag);
  u32 buf_len = skb_frag_size(frag);
  dma_addr_t desc_dma;
  u32 desc_dma_32;

  dma_addr = dma_map_page(dev, page, page_offset, buf_len,
     DMA_TO_DEVICE);
  if (unlikely(!dma_addr)) {
   dev_err(netcp->ndev_dev, "Failed to map skb page\n");
   goto free_descs;
  }

  ndesc = knav_pool_desc_get(netcp->tx_pool);
  if (IS_ERR_OR_NULL(ndesc)) {
   dev_err(netcp->ndev_dev, "out of TX desc for frags\n");
   dma_unmap_page(dev, dma_addr, buf_len, DMA_TO_DEVICE);
   goto free_descs;
  }

  desc_dma = knav_pool_desc_virt_to_dma(netcp->tx_pool, ndesc);
  set_pkt_info(dma_addr, buf_len, 0, ndesc);
  desc_dma_32 = (u32)desc_dma;
  set_words(&desc_dma_32, 1, &pdesc->next_desc);
  pkt_len += buf_len;
  if (pdesc != desc)
   knav_pool_desc_map(netcp->tx_pool, pdesc,
        sizeof(*pdesc), &desc_dma, &dma_sz);
  pdesc = ndesc;
 }
 if (pdesc != desc)
  knav_pool_desc_map(netcp->tx_pool, pdesc, sizeof(*pdesc),
       &dma_addr, &dma_sz);


 if (skb_shinfo(skb)->frag_list) {
  dev_err_ratelimited(netcp->ndev_dev, "NETIF_F_FRAGLIST not supported\n");
  goto free_descs;
 }

upd_pkt_len:
 WARN_ON(pkt_len != skb->len);

 pkt_len &= KNAV_DMA_DESC_PKT_LEN_MASK;
 set_words(&pkt_len, 1, &desc->desc_info);
 return desc;

free_descs:
 netcp_free_tx_desc_chain(netcp, desc, sizeof(*desc));
 return ((void*)0);
}
