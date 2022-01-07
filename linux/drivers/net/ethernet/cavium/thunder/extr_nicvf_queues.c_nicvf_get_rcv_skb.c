
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct nicvf {int hw_tso; } ;
struct cqe_rx_t {int rb_cnt; scalar_t__ align_pad; } ;
struct TYPE_2__ {int nr_frags; } ;


 int RCV_FRAG_LEN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 size_t frag_num (int) ;
 scalar_t__ nicvf_iova_to_phys (struct nicvf*,scalar_t__) ;
 struct sk_buff* nicvf_rb_ptr_to_skb (struct nicvf*,scalar_t__,int) ;
 int nicvf_unmap_rcv_buffer (struct nicvf*,scalar_t__,scalar_t__,int) ;
 int page_address (struct page*) ;
 int phys_to_virt (scalar_t__) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,int,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct page* virt_to_page (int) ;

struct sk_buff *nicvf_get_rcv_skb(struct nicvf *nic,
      struct cqe_rx_t *cqe_rx, bool xdp)
{
 int frag;
 int payload_len = 0;
 struct sk_buff *skb = ((void*)0);
 struct page *page;
 int offset;
 u16 *rb_lens = ((void*)0);
 u64 *rb_ptrs = ((void*)0);
 u64 phys_addr;

 rb_lens = (void *)cqe_rx + (3 * sizeof(u64));







 if (!nic->hw_tso)
  rb_ptrs = (void *)cqe_rx + (6 * sizeof(u64));
 else
  rb_ptrs = (void *)cqe_rx + (7 * sizeof(u64));

 for (frag = 0; frag < cqe_rx->rb_cnt; frag++) {
  payload_len = rb_lens[frag_num(frag)];
  phys_addr = nicvf_iova_to_phys(nic, *rb_ptrs);
  if (!phys_addr) {
   if (skb)
    dev_kfree_skb_any(skb);
   return ((void*)0);
  }

  if (!frag) {

   nicvf_unmap_rcv_buffer(nic,
            *rb_ptrs - cqe_rx->align_pad,
            phys_addr, xdp);
   skb = nicvf_rb_ptr_to_skb(nic,
        phys_addr - cqe_rx->align_pad,
        payload_len);
   if (!skb)
    return ((void*)0);
   skb_reserve(skb, cqe_rx->align_pad);
   skb_put(skb, payload_len);
  } else {

   nicvf_unmap_rcv_buffer(nic, *rb_ptrs, phys_addr, xdp);
   page = virt_to_page(phys_to_virt(phys_addr));
   offset = phys_to_virt(phys_addr) - page_address(page);
   skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
     offset, payload_len, RCV_FRAG_LEN);
  }

  rb_ptrs++;
 }
 return skb;
}
