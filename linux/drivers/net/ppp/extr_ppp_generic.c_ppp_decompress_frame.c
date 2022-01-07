
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ppp {int mru; int rstate; int rc_state; TYPE_1__* rcomp; int dev; } ;
struct TYPE_2__ {int compress_proto; int (* decompress ) (int ,scalar_t__,scalar_t__,scalar_t__,int) ;int (* incomp ) (int ,scalar_t__,scalar_t__) ;} ;



 int DECOMP_FATALERROR ;
 int PPP_COMP ;
 int PPP_HDRLEN ;
 int PPP_PROTO (struct sk_buff*) ;
 int SC_DC_ERROR ;
 int SC_DC_FERROR ;
 int consume_skb (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_err (int ,char*) ;
 int ppp_receive_error (struct ppp*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int stub2 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
ppp_decompress_frame(struct ppp *ppp, struct sk_buff *skb)
{
 int proto = PPP_PROTO(skb);
 struct sk_buff *ns;
 int len;




 if (!pskb_may_pull(skb, skb->len))
  goto err;

 if (proto == PPP_COMP) {
  int obuff_size;

  switch(ppp->rcomp->compress_proto) {
  case 128:
   obuff_size = ppp->mru + PPP_HDRLEN + 1;
   break;
  default:
   obuff_size = ppp->mru + PPP_HDRLEN;
   break;
  }

  ns = dev_alloc_skb(obuff_size);
  if (!ns) {
   netdev_err(ppp->dev, "ppp_decompress_frame: "
       "no memory\n");
   goto err;
  }

  len = ppp->rcomp->decompress(ppp->rc_state, skb->data - 2,
    skb->len + 2, ns->data, obuff_size);
  if (len < 0) {


   if (len == DECOMP_FATALERROR)
    ppp->rstate |= SC_DC_FERROR;
   kfree_skb(ns);
   goto err;
  }

  consume_skb(skb);
  skb = ns;
  skb_put(skb, len);
  skb_pull(skb, 2);




 } else {


  if (ppp->rcomp->incomp)
   ppp->rcomp->incomp(ppp->rc_state, skb->data - 2,
        skb->len + 2);
 }

 return skb;

 err:
 ppp->rstate |= SC_DC_ERROR;
 ppp_receive_error(ppp);
 return skb;
}
