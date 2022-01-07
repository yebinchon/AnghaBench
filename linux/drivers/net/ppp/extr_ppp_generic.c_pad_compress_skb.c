
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ppp {int flags; TYPE_2__* dev; int xc_state; TYPE_1__* xcomp; } ;
struct TYPE_4__ {int mtu; int hard_header_len; } ;
struct TYPE_3__ {int comp_extra; int (* compress ) (int ,scalar_t__,scalar_t__,int,int) ;} ;


 int GFP_ATOMIC ;
 int PPP_HDRLEN ;
 int SC_CCP_UP ;
 struct sk_buff* alloc_skb (int,int ) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (TYPE_2__*,char*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int stub1 (int ,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static inline struct sk_buff *
pad_compress_skb(struct ppp *ppp, struct sk_buff *skb)
{
 struct sk_buff *new_skb;
 int len;
 int new_skb_size = ppp->dev->mtu +
  ppp->xcomp->comp_extra + ppp->dev->hard_header_len;
 int compressor_skb_size = ppp->dev->mtu +
  ppp->xcomp->comp_extra + PPP_HDRLEN;
 new_skb = alloc_skb(new_skb_size, GFP_ATOMIC);
 if (!new_skb) {
  if (net_ratelimit())
   netdev_err(ppp->dev, "PPP: no memory (comp pkt)\n");
  return ((void*)0);
 }
 if (ppp->dev->hard_header_len > PPP_HDRLEN)
  skb_reserve(new_skb,
       ppp->dev->hard_header_len - PPP_HDRLEN);


 len = ppp->xcomp->compress(ppp->xc_state, skb->data - 2,
       new_skb->data, skb->len + 2,
       compressor_skb_size);
 if (len > 0 && (ppp->flags & SC_CCP_UP)) {
  consume_skb(skb);
  skb = new_skb;
  skb_put(skb, len);
  skb_pull(skb, 2);
 } else if (len == 0) {

  consume_skb(new_skb);
  new_skb = skb;
 } else {
  if (net_ratelimit())
   netdev_err(ppp->dev, "ppp: compressor dropped pkt\n");
  kfree_skb(skb);
  consume_skb(new_skb);
  new_skb = ((void*)0);
 }
 return new_skb;
}
