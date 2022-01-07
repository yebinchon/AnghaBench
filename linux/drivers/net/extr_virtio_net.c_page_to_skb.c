
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {unsigned int hdr_len; scalar_t__ mergeable_rx_bufs; } ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct receive_queue {int napi; } ;
struct page {scalar_t__ private; } ;
struct padded_vnet_hdr {int dummy; } ;
struct TYPE_4__ {int nr_frags; } ;
struct TYPE_3__ {int name; } ;


 int BUG_ON (int) ;
 int GOOD_COPY_LEN ;
 unsigned int MAX_SKB_FRAGS ;
 unsigned int PAGE_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int give_pages (struct receive_queue*,struct page*) ;
 int memcpy (struct virtio_net_hdr_mrg_rxbuf*,char*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct sk_buff* napi_alloc_skb (int *,int ) ;
 int net_dbg_ratelimited (char*,int ) ;
 char* page_address (struct page*) ;
 int put_page (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,unsigned int,unsigned int,unsigned int) ;
 int skb_put_data (struct sk_buff*,char*,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 unsigned int skb_tailroom (struct sk_buff*) ;
 struct virtio_net_hdr_mrg_rxbuf* skb_vnet_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *page_to_skb(struct virtnet_info *vi,
       struct receive_queue *rq,
       struct page *page, unsigned int offset,
       unsigned int len, unsigned int truesize,
       bool hdr_valid)
{
 struct sk_buff *skb;
 struct virtio_net_hdr_mrg_rxbuf *hdr;
 unsigned int copy, hdr_len, hdr_padded_len;
 char *p;

 p = page_address(page) + offset;


 skb = napi_alloc_skb(&rq->napi, GOOD_COPY_LEN);
 if (unlikely(!skb))
  return ((void*)0);

 hdr = skb_vnet_hdr(skb);

 hdr_len = vi->hdr_len;
 if (vi->mergeable_rx_bufs)
  hdr_padded_len = sizeof(*hdr);
 else
  hdr_padded_len = sizeof(struct padded_vnet_hdr);

 if (hdr_valid)
  memcpy(hdr, p, hdr_len);

 len -= hdr_len;
 offset += hdr_padded_len;
 p += hdr_padded_len;

 copy = len;
 if (copy > skb_tailroom(skb))
  copy = skb_tailroom(skb);
 skb_put_data(skb, p, copy);

 len -= copy;
 offset += copy;

 if (vi->mergeable_rx_bufs) {
  if (len)
   skb_add_rx_frag(skb, 0, page, offset, len, truesize);
  else
   put_page(page);
  return skb;
 }







 if (unlikely(len > MAX_SKB_FRAGS * PAGE_SIZE)) {
  net_dbg_ratelimited("%s: too much data\n", skb->dev->name);
  dev_kfree_skb(skb);
  return ((void*)0);
 }
 BUG_ON(offset >= PAGE_SIZE);
 while (len) {
  unsigned int frag_size = min((unsigned)PAGE_SIZE - offset, len);
  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page, offset,
    frag_size, truesize);
  len -= frag_size;
  page = (struct page *)page->private;
  offset = 0;
 }

 if (page)
  give_pages(rq, page);

 return skb;
}
