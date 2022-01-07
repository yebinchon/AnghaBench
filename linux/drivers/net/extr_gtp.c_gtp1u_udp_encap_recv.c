
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct pdp_ctx {int dummy; } ;
struct gtp_dev {int role; int dev; } ;
struct gtp1_header {int flags; scalar_t__ type; int tid; } ;


 int GTP1_F_MASK ;
 scalar_t__ GTP_TPDU ;
 int GTP_V1 ;
 struct pdp_ctx* gtp1_pdp_find (struct gtp_dev*,int ) ;
 int gtp_rx (struct pdp_ctx*,struct sk_buff*,unsigned int,int ) ;
 int netdev_dbg (int ,char*,struct sk_buff*) ;
 int ntohl (int ) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
{
 unsigned int hdrlen = sizeof(struct udphdr) +
         sizeof(struct gtp1_header);
 struct gtp1_header *gtp1;
 struct pdp_ctx *pctx;

 if (!pskb_may_pull(skb, hdrlen))
  return -1;

 gtp1 = (struct gtp1_header *)(skb->data + sizeof(struct udphdr));

 if ((gtp1->flags >> 5) != GTP_V1)
  return 1;

 if (gtp1->type != GTP_TPDU)
  return 1;







 if (gtp1->flags & GTP1_F_MASK)
  hdrlen += 4;


 if (!pskb_may_pull(skb, hdrlen))
  return -1;

 gtp1 = (struct gtp1_header *)(skb->data + sizeof(struct udphdr));

 pctx = gtp1_pdp_find(gtp, ntohl(gtp1->tid));
 if (!pctx) {
  netdev_dbg(gtp->dev, "No PDP ctx to decap skb=%p\n", skb);
  return 1;
 }

 return gtp_rx(pctx, skb, hdrlen, gtp->role);
}
