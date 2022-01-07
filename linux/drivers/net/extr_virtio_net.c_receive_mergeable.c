
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {void* data; void* data_end; int * rxq; void* data_hard_start; } ;
struct virtnet_rq_stats {unsigned int bytes; int drops; int xdp_drops; int xdp_redirects; int xdp_tx; int xdp_packets; } ;
struct virtnet_info {unsigned int hdr_len; int vdev; int dev; } ;
struct TYPE_4__ {int gso_type; } ;
struct virtio_net_hdr_mrg_rxbuf {int num_buffers; TYPE_1__ hdr; } ;
struct sk_buff {unsigned int truesize; unsigned int data_len; unsigned int len; struct sk_buff* next; } ;
struct receive_queue {int vq; int mrg_avg_pkt_len; int xdp_rxq; int xdp_prog; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int rx_length_errors; } ;
struct net_device {TYPE_2__ stats; int name; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {int nr_frags; struct sk_buff* frag_list; } ;


 int GFP_ATOMIC ;
 int MAX_SKB_FRAGS ;
 unsigned int PAGE_SIZE ;
 int VIRTIO_XDP_HEADROOM ;
 unsigned int VIRTIO_XDP_REDIR ;
 unsigned int VIRTIO_XDP_TX ;





 int __free_pages (struct page*,int ) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ewma_pkt_len_add (int *,unsigned int) ;
 unsigned int mergeable_ctx_to_headroom (void*) ;
 unsigned int mergeable_ctx_to_truesize (void*) ;
 void* page_address (struct page*) ;
 struct sk_buff* page_to_skb (struct virtnet_info*,struct receive_queue*,struct page*,int,unsigned int,unsigned int,int) ;
 int pr_debug (char*,int ,int,...) ;
 int put_page (struct page*) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_add_rx_frag (struct sk_buff*,int,struct page*,int,unsigned int,unsigned int) ;
 scalar_t__ skb_can_coalesce (struct sk_buff*,int,struct page*,int) ;
 int skb_coalesce_rx_frag (struct sk_buff*,int,unsigned int,unsigned int) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void*) ;
 int virtio16_to_cpu (int ,int ) ;
 unsigned int virtnet_get_headroom (struct virtnet_info*) ;
 int virtnet_xdp_xmit (struct net_device*,int,struct xdp_frame**,int ) ;
 void* virtqueue_get_buf (int ,unsigned int*) ;
 void* virtqueue_get_buf_ctx (int ,unsigned int*,void**) ;
 int xdp_do_redirect (struct net_device*,struct xdp_buff*,struct bpf_prog*) ;
 struct page* xdp_linearize_page (struct receive_queue*,int*,struct page*,int,int,unsigned int*) ;
 int xdp_set_data_meta_invalid (struct xdp_buff*) ;

__attribute__((used)) static struct sk_buff *receive_mergeable(struct net_device *dev,
      struct virtnet_info *vi,
      struct receive_queue *rq,
      void *buf,
      void *ctx,
      unsigned int len,
      unsigned int *xdp_xmit,
      struct virtnet_rq_stats *stats)
{
 struct virtio_net_hdr_mrg_rxbuf *hdr = buf;
 u16 num_buf = virtio16_to_cpu(vi->vdev, hdr->num_buffers);
 struct page *page = virt_to_head_page(buf);
 int offset = buf - page_address(page);
 struct sk_buff *head_skb, *curr_skb;
 struct bpf_prog *xdp_prog;
 unsigned int truesize;
 unsigned int headroom = mergeable_ctx_to_headroom(ctx);
 int err;

 head_skb = ((void*)0);
 stats->bytes += len - vi->hdr_len;

 rcu_read_lock();
 xdp_prog = rcu_dereference(rq->xdp_prog);
 if (xdp_prog) {
  struct xdp_frame *xdpf;
  struct page *xdp_page;
  struct xdp_buff xdp;
  void *data;
  u32 act;





  if (unlikely(hdr->hdr.gso_type))
   goto err_xdp;







  if (unlikely(num_buf > 1 ||
        headroom < virtnet_get_headroom(vi))) {

   xdp_page = xdp_linearize_page(rq, &num_buf,
            page, offset,
            VIRTIO_XDP_HEADROOM,
            &len);
   if (!xdp_page)
    goto err_xdp;
   offset = VIRTIO_XDP_HEADROOM;
  } else {
   xdp_page = page;
  }




  data = page_address(xdp_page) + offset;
  xdp.data_hard_start = data - VIRTIO_XDP_HEADROOM + vi->hdr_len;
  xdp.data = data + vi->hdr_len;
  xdp_set_data_meta_invalid(&xdp);
  xdp.data_end = xdp.data + (len - vi->hdr_len);
  xdp.rxq = &rq->xdp_rxq;

  act = bpf_prog_run_xdp(xdp_prog, &xdp);
  stats->xdp_packets++;

  switch (act) {
  case 130:




   offset = xdp.data -
     page_address(xdp_page) - vi->hdr_len;




   len = xdp.data_end - xdp.data + vi->hdr_len;

   if (unlikely(xdp_page != page)) {
    rcu_read_unlock();
    put_page(page);
    head_skb = page_to_skb(vi, rq, xdp_page,
             offset, len,
             PAGE_SIZE, 0);
    return head_skb;
   }
   break;
  case 128:
   stats->xdp_tx++;
   xdpf = convert_to_xdp_frame(&xdp);
   if (unlikely(!xdpf))
    goto err_xdp;
   err = virtnet_xdp_xmit(dev, 1, &xdpf, 0);
   if (unlikely(err < 0)) {
    trace_xdp_exception(vi->dev, xdp_prog, act);
    if (unlikely(xdp_page != page))
     put_page(xdp_page);
    goto err_xdp;
   }
   *xdp_xmit |= VIRTIO_XDP_TX;
   if (unlikely(xdp_page != page))
    put_page(page);
   rcu_read_unlock();
   goto xdp_xmit;
  case 129:
   stats->xdp_redirects++;
   err = xdp_do_redirect(dev, &xdp, xdp_prog);
   if (err) {
    if (unlikely(xdp_page != page))
     put_page(xdp_page);
    goto err_xdp;
   }
   *xdp_xmit |= VIRTIO_XDP_REDIR;
   if (unlikely(xdp_page != page))
    put_page(page);
   rcu_read_unlock();
   goto xdp_xmit;
  default:
   bpf_warn_invalid_xdp_action(act);

  case 132:
   trace_xdp_exception(vi->dev, xdp_prog, act);

  case 131:
   if (unlikely(xdp_page != page))
    __free_pages(xdp_page, 0);
   goto err_xdp;
  }
 }
 rcu_read_unlock();

 truesize = mergeable_ctx_to_truesize(ctx);
 if (unlikely(len > truesize)) {
  pr_debug("%s: rx error: len %u exceeds truesize %lu\n",
    dev->name, len, (unsigned long)ctx);
  dev->stats.rx_length_errors++;
  goto err_skb;
 }

 head_skb = page_to_skb(vi, rq, page, offset, len, truesize, !xdp_prog);
 curr_skb = head_skb;

 if (unlikely(!curr_skb))
  goto err_skb;
 while (--num_buf) {
  int num_skb_frags;

  buf = virtqueue_get_buf_ctx(rq->vq, &len, &ctx);
  if (unlikely(!buf)) {
   pr_debug("%s: rx error: %d buffers out of %d missing\n",
     dev->name, num_buf,
     virtio16_to_cpu(vi->vdev,
       hdr->num_buffers));
   dev->stats.rx_length_errors++;
   goto err_buf;
  }

  stats->bytes += len;
  page = virt_to_head_page(buf);

  truesize = mergeable_ctx_to_truesize(ctx);
  if (unlikely(len > truesize)) {
   pr_debug("%s: rx error: len %u exceeds truesize %lu\n",
     dev->name, len, (unsigned long)ctx);
   dev->stats.rx_length_errors++;
   goto err_skb;
  }

  num_skb_frags = skb_shinfo(curr_skb)->nr_frags;
  if (unlikely(num_skb_frags == MAX_SKB_FRAGS)) {
   struct sk_buff *nskb = alloc_skb(0, GFP_ATOMIC);

   if (unlikely(!nskb))
    goto err_skb;
   if (curr_skb == head_skb)
    skb_shinfo(curr_skb)->frag_list = nskb;
   else
    curr_skb->next = nskb;
   curr_skb = nskb;
   head_skb->truesize += nskb->truesize;
   num_skb_frags = 0;
  }
  if (curr_skb != head_skb) {
   head_skb->data_len += len;
   head_skb->len += len;
   head_skb->truesize += truesize;
  }
  offset = buf - page_address(page);
  if (skb_can_coalesce(curr_skb, num_skb_frags, page, offset)) {
   put_page(page);
   skb_coalesce_rx_frag(curr_skb, num_skb_frags - 1,
          len, truesize);
  } else {
   skb_add_rx_frag(curr_skb, num_skb_frags, page,
     offset, len, truesize);
  }
 }

 ewma_pkt_len_add(&rq->mrg_avg_pkt_len, head_skb->len);
 return head_skb;

err_xdp:
 rcu_read_unlock();
 stats->xdp_drops++;
err_skb:
 put_page(page);
 while (num_buf-- > 1) {
  buf = virtqueue_get_buf(rq->vq, &len);
  if (unlikely(!buf)) {
   pr_debug("%s: rx error: %d buffers missing\n",
     dev->name, num_buf);
   dev->stats.rx_length_errors++;
   break;
  }
  stats->bytes += len;
  page = virt_to_head_page(buf);
  put_page(page);
 }
err_buf:
 stats->drops++;
 dev_kfree_skb(head_skb);
xdp_xmit:
 return ((void*)0);
}
