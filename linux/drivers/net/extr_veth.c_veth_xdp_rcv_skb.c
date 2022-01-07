
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdp_buff {void* data; void* data_end; void* data_meta; TYPE_1__* rxq; int data_hard_start; } ;
struct veth_xdp_tx_bq {int dummy; } ;
struct TYPE_2__ {int mem; } ;
struct veth_rq {int dev; int xdp_mem; TYPE_1__ xdp_rxq; int xdp_prog; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {void* data; scalar_t__ len; int mac_header; int protocol; int head; } ;
struct page {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 int SKB_DATA_ALIGN (int) ;
 int VETH_XDP_HEADROOM ;
 unsigned int VETH_XDP_REDIR ;
 unsigned int VETH_XDP_TX ;


 scalar_t__ XDP_PACKET_HEADROOM ;



 int __GFP_NOWARN ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_push (struct sk_buff*,int) ;
 int __skb_put (struct sk_buff*,int) ;
 struct page* alloc_page (int) ;
 scalar_t__ bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (scalar_t__) ;
 int consume_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int get_page (int ) ;
 int kfree_skb (struct sk_buff*) ;
 void* page_address (struct page*) ;
 int page_frag_free (void*) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,void*,scalar_t__) ;
 int skb_copy_header (struct sk_buff*,struct sk_buff*) ;
 scalar_t__ skb_head_is_locked (struct sk_buff*) ;
 int skb_headers_offset_update (struct sk_buff*,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 void* skb_mac_header (struct sk_buff*) ;
 int skb_metadata_set (struct sk_buff*,scalar_t__) ;
 int skb_orphan (struct sk_buff*) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 int trace_xdp_exception (int ,struct bpf_prog*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* veth_build_skb (void*,int,scalar_t__,int) ;
 int veth_xdp_tx (int ,struct xdp_buff*,struct veth_xdp_tx_bq*) ;
 int virt_to_page (void*) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;

__attribute__((used)) static struct sk_buff *veth_xdp_rcv_skb(struct veth_rq *rq, struct sk_buff *skb,
     unsigned int *xdp_xmit,
     struct veth_xdp_tx_bq *bq)
{
 u32 pktlen, headroom, act, metalen;
 void *orig_data, *orig_data_end;
 struct bpf_prog *xdp_prog;
 int mac_len, delta, off;
 struct xdp_buff xdp;

 skb_orphan(skb);

 rcu_read_lock();
 xdp_prog = rcu_dereference(rq->xdp_prog);
 if (unlikely(!xdp_prog)) {
  rcu_read_unlock();
  goto out;
 }

 mac_len = skb->data - skb_mac_header(skb);
 pktlen = skb->len + mac_len;
 headroom = skb_headroom(skb) - mac_len;

 if (skb_shared(skb) || skb_head_is_locked(skb) ||
     skb_is_nonlinear(skb) || headroom < XDP_PACKET_HEADROOM) {
  struct sk_buff *nskb;
  int size, head_off;
  void *head, *start;
  struct page *page;

  size = SKB_DATA_ALIGN(VETH_XDP_HEADROOM + pktlen) +
         SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
  if (size > PAGE_SIZE)
   goto drop;

  page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
  if (!page)
   goto drop;

  head = page_address(page);
  start = head + VETH_XDP_HEADROOM;
  if (skb_copy_bits(skb, -mac_len, start, pktlen)) {
   page_frag_free(head);
   goto drop;
  }

  nskb = veth_build_skb(head,
          VETH_XDP_HEADROOM + mac_len, skb->len,
          PAGE_SIZE);
  if (!nskb) {
   page_frag_free(head);
   goto drop;
  }

  skb_copy_header(nskb, skb);
  head_off = skb_headroom(nskb) - skb_headroom(skb);
  skb_headers_offset_update(nskb, head_off);
  consume_skb(skb);
  skb = nskb;
 }

 xdp.data_hard_start = skb->head;
 xdp.data = skb_mac_header(skb);
 xdp.data_end = xdp.data + pktlen;
 xdp.data_meta = xdp.data;
 xdp.rxq = &rq->xdp_rxq;
 orig_data = xdp.data;
 orig_data_end = xdp.data_end;

 act = bpf_prog_run_xdp(xdp_prog, &xdp);

 switch (act) {
 case 130:
  break;
 case 128:
  get_page(virt_to_page(xdp.data));
  consume_skb(skb);
  xdp.rxq->mem = rq->xdp_mem;
  if (unlikely(veth_xdp_tx(rq->dev, &xdp, bq) < 0)) {
   trace_xdp_exception(rq->dev, xdp_prog, act);
   goto err_xdp;
  }
  *xdp_xmit |= VETH_XDP_TX;
  rcu_read_unlock();
  goto xdp_xmit;
 case 129:
  get_page(virt_to_page(xdp.data));
  consume_skb(skb);
  xdp.rxq->mem = rq->xdp_mem;
  if (xdp_do_redirect(rq->dev, &xdp, xdp_prog))
   goto err_xdp;
  *xdp_xmit |= VETH_XDP_REDIR;
  rcu_read_unlock();
  goto xdp_xmit;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(rq->dev, xdp_prog, act);

 case 131:
  goto drop;
 }
 rcu_read_unlock();

 delta = orig_data - xdp.data;
 off = mac_len + delta;
 if (off > 0)
  __skb_push(skb, off);
 else if (off < 0)
  __skb_pull(skb, -off);
 skb->mac_header -= delta;
 off = xdp.data_end - orig_data_end;
 if (off != 0)
  __skb_put(skb, off);
 skb->protocol = eth_type_trans(skb, rq->dev);

 metalen = xdp.data - xdp.data_meta;
 if (metalen)
  skb_metadata_set(skb, metalen);
out:
 return skb;
drop:
 rcu_read_unlock();
 kfree_skb(skb);
 return ((void*)0);
err_xdp:
 rcu_read_unlock();
 page_frag_free(xdp.data);
xdp_xmit:
 return ((void*)0);
}
