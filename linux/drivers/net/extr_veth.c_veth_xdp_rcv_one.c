
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {int data; int headroom; int len; int metasize; int mem; } ;
struct xdp_buff {int data; int data_end; int data_meta; TYPE_1__* rxq; void* data_hard_start; } ;
struct veth_xdp_tx_bq {int dummy; } ;
struct TYPE_2__ {int mem; } ;
struct veth_rq {int dev; TYPE_1__ xdp_rxq; int xdp_prog; } ;
struct sk_buff {int protocol; } ;
struct bpf_prog {int dummy; } ;


 unsigned int VETH_XDP_REDIR ;
 unsigned int VETH_XDP_TX ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ likely (struct bpf_prog*) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int unlikely (int) ;
 struct sk_buff* veth_build_skb (void*,unsigned int,int,int ) ;
 int veth_xdp_tx (int ,struct xdp_buff*,struct veth_xdp_tx_bq*) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;
 int xdp_release_frame (struct xdp_frame*) ;
 int xdp_return_frame (struct xdp_frame*) ;
 int xdp_scrub_frame (struct xdp_frame*) ;

__attribute__((used)) static struct sk_buff *veth_xdp_rcv_one(struct veth_rq *rq,
     struct xdp_frame *frame,
     unsigned int *xdp_xmit,
     struct veth_xdp_tx_bq *bq)
{
 void *hard_start = frame->data - frame->headroom;
 void *head = hard_start - sizeof(struct xdp_frame);
 int len = frame->len, delta = 0;
 struct xdp_frame orig_frame;
 struct bpf_prog *xdp_prog;
 unsigned int headroom;
 struct sk_buff *skb;

 rcu_read_lock();
 xdp_prog = rcu_dereference(rq->xdp_prog);
 if (likely(xdp_prog)) {
  struct xdp_buff xdp;
  u32 act;

  xdp.data_hard_start = hard_start;
  xdp.data = frame->data;
  xdp.data_end = frame->data + frame->len;
  xdp.data_meta = frame->data - frame->metasize;
  xdp.rxq = &rq->xdp_rxq;

  act = bpf_prog_run_xdp(xdp_prog, &xdp);

  switch (act) {
  case 130:
   delta = frame->data - xdp.data;
   len = xdp.data_end - xdp.data;
   break;
  case 128:
   orig_frame = *frame;
   xdp.data_hard_start = head;
   xdp.rxq->mem = frame->mem;
   if (unlikely(veth_xdp_tx(rq->dev, &xdp, bq) < 0)) {
    trace_xdp_exception(rq->dev, xdp_prog, act);
    frame = &orig_frame;
    goto err_xdp;
   }
   *xdp_xmit |= VETH_XDP_TX;
   rcu_read_unlock();
   goto xdp_xmit;
  case 129:
   orig_frame = *frame;
   xdp.data_hard_start = head;
   xdp.rxq->mem = frame->mem;
   if (xdp_do_redirect(rq->dev, &xdp, xdp_prog)) {
    frame = &orig_frame;
    goto err_xdp;
   }
   *xdp_xmit |= VETH_XDP_REDIR;
   rcu_read_unlock();
   goto xdp_xmit;
  default:
   bpf_warn_invalid_xdp_action(act);

  case 132:
   trace_xdp_exception(rq->dev, xdp_prog, act);

  case 131:
   goto err_xdp;
  }
 }
 rcu_read_unlock();

 headroom = sizeof(struct xdp_frame) + frame->headroom - delta;
 skb = veth_build_skb(head, headroom, len, 0);
 if (!skb) {
  xdp_return_frame(frame);
  goto err;
 }

 xdp_release_frame(frame);
 xdp_scrub_frame(frame);
 skb->protocol = eth_type_trans(skb, rq->dev);
err:
 return skb;
err_xdp:
 rcu_read_unlock();
 xdp_return_frame(frame);
xdp_xmit:
 return ((void*)0);
}
