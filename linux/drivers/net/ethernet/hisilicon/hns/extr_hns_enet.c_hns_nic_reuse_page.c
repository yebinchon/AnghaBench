
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct hnae_ring {size_t next_to_clean; struct hnae_desc* desc; } ;
struct hnae_desc_cb {int page_offset; int reuse_flag; int priv; } ;
struct TYPE_2__ {int size; } ;
struct hnae_desc {TYPE_1__ rx; } ;


 int ALIGN (int,int ) ;
 scalar_t__ HNS_BUFFER_SIZE_2048 ;
 int L1_CACHE_BYTES ;
 int PAGE_SIZE ;
 int get_page (int ) ;
 scalar_t__ hnae_buf_size (struct hnae_ring*) ;
 scalar_t__ hnae_page_size (struct hnae_ring*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ numa_node_id () ;
 int page_count (int ) ;
 scalar_t__ page_to_nid (int ) ;
 int skb_add_rx_frag (struct sk_buff*,int,int ,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void hns_nic_reuse_page(struct sk_buff *skb, int i,
          struct hnae_ring *ring, int pull_len,
          struct hnae_desc_cb *desc_cb)
{
 struct hnae_desc *desc;
 u32 truesize;
 int size;
 int last_offset;
 bool twobufs;

 twobufs = ((PAGE_SIZE < 8192) &&
  hnae_buf_size(ring) == HNS_BUFFER_SIZE_2048);

 desc = &ring->desc[ring->next_to_clean];
 size = le16_to_cpu(desc->rx.size);

 if (twobufs) {
  truesize = hnae_buf_size(ring);
 } else {
  truesize = ALIGN(size, L1_CACHE_BYTES);
  last_offset = hnae_page_size(ring) - hnae_buf_size(ring);
 }

 skb_add_rx_frag(skb, i, desc_cb->priv, desc_cb->page_offset + pull_len,
   size - pull_len, truesize);


 if (unlikely(page_to_nid(desc_cb->priv) != numa_node_id()))
  return;

 if (twobufs) {

  if (likely(page_count(desc_cb->priv) == 1)) {

   desc_cb->page_offset ^= truesize;

   desc_cb->reuse_flag = 1;

   get_page(desc_cb->priv);
  }
  return;
 }


 desc_cb->page_offset += truesize;

 if (desc_cb->page_offset <= last_offset) {
  desc_cb->reuse_flag = 1;

  get_page(desc_cb->priv);
 }
}
