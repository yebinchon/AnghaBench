
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; unsigned char* data; } ;
struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_8__ {int rwait; TYPE_4__ rq; } ;
struct TYPE_7__ {int tx_bytes; int tx_packets; } ;
struct ppp {int debug; int flags; int xstate; TYPE_5__* dev; struct sk_buff* xmit_pending; TYPE_2__ file; scalar_t__ xc_state; int vj; TYPE_1__ stats64; void* last_xmit; scalar_t__ active_filter; scalar_t__ pass_filter; } ;
struct TYPE_9__ {int tx_errors; } ;
struct TYPE_11__ {TYPE_3__ stats; int hard_header_len; } ;


 scalar_t__ BPF_PROG_RUN (scalar_t__,struct sk_buff*) ;
 int GFP_ATOMIC ;
 int KERN_DEBUG ;


 int PPP_LCP ;
 scalar_t__ PPP_MAX_RQLEN ;
 int PPP_PROTO (struct sk_buff*) ;
 int PPP_VJC_COMP ;
 int PPP_VJC_UNCOMP ;
 int SC_CCP_UP ;
 int SC_COMP_RUN ;
 int SC_COMP_TCP ;
 int SC_LOOP_TRAFFIC ;
 int SC_MUST_COMP ;
 int SC_NO_TCP_CCID ;
 unsigned char SL_TYPE_COMPRESSED_TCP ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int consume_skb (struct sk_buff*) ;
 void* jiffies ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (TYPE_5__*,char*) ;
 int netdev_printk (int ,TYPE_5__*,char*) ;
 struct sk_buff* pad_compress_skb (struct ppp*,struct sk_buff*) ;
 int ppp_ccp_peek (struct ppp*,struct sk_buff*,int ) ;
 int ppp_push (struct ppp*) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (TYPE_4__*,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int slhc_compress (int ,unsigned char*,int,int ,unsigned char**,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
ppp_send_frame(struct ppp *ppp, struct sk_buff *skb)
{
 int proto = PPP_PROTO(skb);
 struct sk_buff *new_skb;
 int len;
 unsigned char *cp;

 if (proto < 0x8000) {
  ppp->last_xmit = jiffies;

 }

 ++ppp->stats64.tx_packets;
 ppp->stats64.tx_bytes += skb->len - 2;

 switch (proto) {
 case 128:
  if (!ppp->vj || (ppp->flags & SC_COMP_TCP) == 0)
   break;

  new_skb = alloc_skb(skb->len + ppp->dev->hard_header_len - 2,
        GFP_ATOMIC);
  if (!new_skb) {
   netdev_err(ppp->dev, "PPP: no memory (VJ comp pkt)\n");
   goto drop;
  }
  skb_reserve(new_skb, ppp->dev->hard_header_len - 2);
  cp = skb->data + 2;
  len = slhc_compress(ppp->vj, cp, skb->len - 2,
        new_skb->data + 2, &cp,
        !(ppp->flags & SC_NO_TCP_CCID));
  if (cp == skb->data + 2) {

   consume_skb(new_skb);
  } else {
   if (cp[0] & SL_TYPE_COMPRESSED_TCP) {
    proto = PPP_VJC_COMP;
    cp[0] &= ~SL_TYPE_COMPRESSED_TCP;
   } else {
    proto = PPP_VJC_UNCOMP;
    cp[0] = skb->data[2];
   }
   consume_skb(skb);
   skb = new_skb;
   cp = skb_put(skb, len + 2);
   cp[0] = 0;
   cp[1] = proto;
  }
  break;

 case 129:

  ppp_ccp_peek(ppp, skb, 0);
  break;
 }


 if ((ppp->xstate & SC_COMP_RUN) && ppp->xc_state &&
     proto != PPP_LCP && proto != 129) {
  if (!(ppp->flags & SC_CCP_UP) && (ppp->flags & SC_MUST_COMP)) {
   if (net_ratelimit())
    netdev_err(ppp->dev,
        "ppp: compression required but "
        "down - pkt dropped.\n");
   goto drop;
  }
  skb = pad_compress_skb(ppp, skb);
  if (!skb)
   goto drop;
 }





 if (ppp->flags & SC_LOOP_TRAFFIC) {
  if (ppp->file.rq.qlen > PPP_MAX_RQLEN)
   goto drop;
  skb_queue_tail(&ppp->file.rq, skb);
  wake_up_interruptible(&ppp->file.rwait);
  return;
 }

 ppp->xmit_pending = skb;
 ppp_push(ppp);
 return;

 drop:
 kfree_skb(skb);
 ++ppp->dev->stats.tx_errors;
}
