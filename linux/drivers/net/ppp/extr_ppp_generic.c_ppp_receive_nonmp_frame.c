
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int len; int protocol; TYPE_5__* dev; int data; int ip_summed; } ;
struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_9__ {int rwait; TYPE_3__ rq; } ;
struct TYPE_8__ {int rx_bytes; int rx_packets; } ;
struct ppp {int rstate; int flags; int debug; scalar_t__* npmode; TYPE_5__* dev; int ppp_net; void* last_recv; scalar_t__ active_filter; scalar_t__ pass_filter; TYPE_2__ file; TYPE_1__ stats64; int vj; scalar_t__ rc_state; } ;
struct TYPE_11__ {int flags; } ;


 scalar_t__ BPF_PROG_RUN (scalar_t__,struct sk_buff*) ;
 int CHECKSUM_NONE ;
 int GFP_ATOMIC ;
 int IFF_UP ;
 int KERN_DEBUG ;
 scalar_t__ NPMODE_PASS ;

 int PPP_IP ;
 scalar_t__ PPP_MAX_RQLEN ;
 int PPP_PROTO (struct sk_buff*) ;


 int SC_DC_ERROR ;
 int SC_DC_FERROR ;
 int SC_DECOMP_RUN ;
 int SC_MUST_COMP ;
 int SC_REJ_COMP_TCP ;
 int __skb_pull (struct sk_buff*,int) ;
 int consume_skb (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_net (TYPE_5__*) ;
 int htons (int ) ;
 void* jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int ) ;
 int netdev_err (TYPE_5__*,char*) ;
 int netdev_printk (int ,TYPE_5__*,char*) ;
 int netif_rx (struct sk_buff*) ;
 int * npindex_to_ethertype ;
 int ppp_ccp_peek (struct ppp*,struct sk_buff*,int) ;
 struct sk_buff* ppp_decompress_frame (struct ppp*,struct sk_buff*) ;
 int ppp_receive_error (struct ppp*) ;
 int proto_to_npindex (int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_cloned (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,int ,int) ;
 struct sk_buff* skb_dequeue (TYPE_3__*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (TYPE_3__*,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ skb_unclone (struct sk_buff*,int ) ;
 int slhc_remember (int ,int ,int) ;
 int slhc_uncompress (int ,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
ppp_receive_nonmp_frame(struct ppp *ppp, struct sk_buff *skb)
{
 struct sk_buff *ns;
 int proto, len, npi;






 if (ppp->rc_state && (ppp->rstate & SC_DECOMP_RUN) &&
     (ppp->rstate & (SC_DC_FERROR | SC_DC_ERROR)) == 0)
  skb = ppp_decompress_frame(ppp, skb);

 if (ppp->flags & SC_MUST_COMP && ppp->rstate & SC_DC_FERROR)
  goto err;




 proto = PPP_PROTO(skb);
 switch (proto) {
 case 129:

  if (!ppp->vj || (ppp->flags & SC_REJ_COMP_TCP))
   goto err;

  if (skb_tailroom(skb) < 124 || skb_cloned(skb)) {

   ns = dev_alloc_skb(skb->len + 128);
   if (!ns) {
    netdev_err(ppp->dev, "PPP: no memory "
        "(VJ decomp)\n");
    goto err;
   }
   skb_reserve(ns, 2);
   skb_copy_bits(skb, 0, skb_put(ns, skb->len), skb->len);
   consume_skb(skb);
   skb = ns;
  }
  else
   skb->ip_summed = CHECKSUM_NONE;

  len = slhc_uncompress(ppp->vj, skb->data + 2, skb->len - 2);
  if (len <= 0) {
   netdev_printk(KERN_DEBUG, ppp->dev,
          "PPP: VJ decompression error\n");
   goto err;
  }
  len += 2;
  if (len > skb->len)
   skb_put(skb, len - skb->len);
  else if (len < skb->len)
   skb_trim(skb, len);
  proto = PPP_IP;
  break;

 case 128:
  if (!ppp->vj || (ppp->flags & SC_REJ_COMP_TCP))
   goto err;




  if (!pskb_may_pull(skb, skb->len))
   goto err;

  if (slhc_remember(ppp->vj, skb->data + 2, skb->len - 2) <= 0) {
   netdev_err(ppp->dev, "PPP: VJ uncompressed error\n");
   goto err;
  }
  proto = PPP_IP;
  break;

 case 130:
  ppp_ccp_peek(ppp, skb, 1);
  break;
 }

 ++ppp->stats64.rx_packets;
 ppp->stats64.rx_bytes += skb->len - 2;

 npi = proto_to_npindex(proto);
 if (npi < 0) {

  skb_queue_tail(&ppp->file.rq, skb);

  while (ppp->file.rq.qlen > PPP_MAX_RQLEN &&
         (skb = skb_dequeue(&ppp->file.rq)))
   kfree_skb(skb);

  wake_up_interruptible(&ppp->file.rwait);

 } else {
   ppp->last_recv = jiffies;

  if ((ppp->dev->flags & IFF_UP) == 0 ||
      ppp->npmode[npi] != NPMODE_PASS) {
   kfree_skb(skb);
  } else {

   skb_pull_rcsum(skb, 2);
   skb->dev = ppp->dev;
   skb->protocol = htons(npindex_to_ethertype[npi]);
   skb_reset_mac_header(skb);
   skb_scrub_packet(skb, !net_eq(ppp->ppp_net,
            dev_net(ppp->dev)));
   netif_rx(skb);
  }
 }
 return;

 err:
 kfree_skb(skb);
 ppp_receive_error(ppp);
}
